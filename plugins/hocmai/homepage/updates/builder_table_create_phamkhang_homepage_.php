<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiHomepage extends Migration
{
    public function up()
    {
        Schema::create('hocmai_homepage_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('info_id')->unsigned();
            $table->integer('products_id')->unsigned();
            $table->primary(['info_id','products_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_homepage_');
    }
}
