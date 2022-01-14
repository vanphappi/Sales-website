const togglePassword = document.querySelector('.togglePassword');
const confirm_togglePassword = document.querySelector('.confirm_togglePassword');
const password = document.querySelector('#password');
const confirmpassword = document.querySelector('#confirm-password');
// const close = document.querySelector('.close');
// const alert = document.querySelector('.alert');

togglePassword.addEventListener('click', function (e) {
    
    if (password.type=="password"){
        password.type = "text";
        this.classList.add('fa-eye');
        this.classList.remove('fa-eye-slash');
    } else {
        password.type = "password";
        this.classList.add('fa-eye-slash');
        this.classList.remove('fa-eye');
    }
});

confirm_togglePassword.addEventListener('click', function (e) {

    if (confirmpassword.type=="password"){
        confirmpassword.type = "text";
        this.classList.add('fa-eye');
        this.classList.remove('fa-eye-slash');
    } else {
        confirmpassword.type = "password";
        this.classList.add('fa-eye-slash');
        this.classList.remove('fa-eye');
    }
});

close.addEventListener('click', function (e) {
    alert.remove();
});