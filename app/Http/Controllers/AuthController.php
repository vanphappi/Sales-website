<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use Validator;
use Hash;
use App\Models\User;

class AuthController extends Controller
{
    public function showpagelogin(){
        return view('login');
    }

    public function showpageregister(){
        return view('register');
    }

    public function showpageconfirmregis(Request $request){
        
        // $this->validate($request, [
        //     'email'   => 'required|email',
        //     'password'  => ''

        // ]);

        //  $user_data = array(
        //   'email'  => $request->get('email'),          
        //   'password' => $request->get('password')
        //  );

        // if(Auth::attempt($user_data))
        // {
        //     return redirect('/home');
        // }
        // else
        // {
        //     return view ('/welcome');
        // }
    }   

    public function checklogin(Request $request){
    
        $this->validate($request, [
            'email'   => 'required|email',
            'password'  => 'required|min:3|max:20'
        ]);

         $user_data = array(
          'email'  => $request->get('email'),
          'password' => $request->get('password')
         );

        if(Auth::attempt($user_data))
        {
            return redirect('/');
            
        }
        else
        {
            return back()->with('error', 'Wrong Login Details');
        }
    }

    public function checkregister(Request $request)
    {  
        $request->validate([
            'name' => 'min:6',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|confirmed',
            'password_confirmation' => 'required| min:6'
        ]);
           
        $data = $request->all();
        $check = $this->create($data);
         
        return redirect("/login");
    }

    public function create(array $data)
    {
        $name = $data['name'];
        $email = $data['email'];
        $pass = Hash::make($data['password']);
        return DB::insert("insert into `users` (name, `email`, `password`, avatar) values ('$name', '$email', '$pass', 'avatar_default.png')");
    } 

    public function logout(){
        Auth::logout();
        return view ('login');
    }
}