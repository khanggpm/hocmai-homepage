<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiHomepageInfo extends Migration
{
    public function up()
    {
        Schema::create('hocmai_homepage_info', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->string('content');
            $table->string('image');
            $table->integer('status')->default(1);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_homepage_info');
    }
}
