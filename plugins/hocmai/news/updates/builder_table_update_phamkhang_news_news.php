<?php namespace hocmai\News\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiNewsNews extends Migration
{
    public function up()
    {
        Schema::table('hocmai_news_news', function($table)
        {
            $table->integer('view')->nullable();
            $table->dropColumn('most_read');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_news_news', function($table)
        {
            $table->dropColumn('view');
            $table->integer('most_read');
        });
    }
}
