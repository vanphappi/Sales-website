<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableProduct extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_product', function (Blueprint $table) {
            $table->increments('product_id');
            $table->string('product_name', 255);
            $table->string('product_slug', 255);
            $table->integer('category_id');
            $table->integer('brand_id');
            $table->string('product_desc');
            $table->string('product_content');
            $table->string('product_price', 255);
            $table->string('product_image', 255);
            $table->integer('product_status');
            $table->timestamp('created_at');
            $table->timestamp('updated_at');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product');
    }
}
