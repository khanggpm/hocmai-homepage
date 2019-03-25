<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiHomepagePartner extends Migration
{
    public function up()
    {
        Schema::create('hocmai_homepage_partner', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('url');
            $table->string('image');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_homepage_partner');
    }
}
