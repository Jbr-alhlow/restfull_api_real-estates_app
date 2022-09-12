<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
{
    Schema::create('products', function (Blueprint $table) {
        $table->increments('id');
        $table->integer('user_id');

        $table->string('name');
        $table->integer('price');
        $table->timestamps();
        $table->string('type');
        $table->string('details');
        $table->string('location');
        $table->string('area');
        $table->string('state');
        $table->string('position');
        $table->string('img1');
        $table->string('img2');
        $table->string('img3');
        $table->string('img4');
        $table->string('img5');
        $table->foreign('user_id')
        ->references('id')
        ->on('users');
    });
}

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
