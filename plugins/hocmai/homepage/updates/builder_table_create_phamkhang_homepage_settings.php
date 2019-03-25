<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiHomepageSettings extends Migration
{
    public function up()
    {
        Schema::create('hocmai_homepage_settings', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('logo');
            $table->string('address');
            $table->string('home_phone');
            $table->string('mobile_phone');
            $table->string('mail');
            $table->string('fb_link');
            $table->string('zalo_link');
            $table->string('youtube_link');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_homepage_settings');
    }
}
