<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiHomepageEvents extends Migration
{
    public function up()
    {
        Schema::create('hocmai_homepage_events', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->string('address');
            $table->dateTime('start_date');
            $table->dateTime('end_date');
            $table->string('content');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_homepage_events');
    }
}
