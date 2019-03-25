<?php namespace hocmai\News\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatehocmaiNewsNews extends Migration
{
    public function up()
    {
        Schema::create('hocmai_news_news', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->integer('categories_id')->nullable();
            $table->string('slug');
            $table->string('tags')->nullable();
            $table->text('content')->nullable();
            $table->string('image')->nullable();
            $table->integer('most_read');
            $table->integer('event_upcoming')->default(0);
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_news_news');
    }
}
