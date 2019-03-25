<?php namespace hocmai\News\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiNewsPosts extends Migration
{
    public function up()
    {
        Schema::create('hocmai_news_posts', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->integer('category_id')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_news_posts');
    }
}
