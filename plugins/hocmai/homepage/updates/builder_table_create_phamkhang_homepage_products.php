<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiHomepageProducts extends Migration
{
    public function up()
    {
        Schema::create('hocmai_homepage_products', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('image');
            $table->string('url');
            $table->integer('info_id');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_homepage_products');
    }
}
