<?php namespace hocmai\News\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiNewsCategories extends Migration
{
    public function up()
    {
        Schema::create('hocmai_news_categories', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_news_categories');
    }
}
