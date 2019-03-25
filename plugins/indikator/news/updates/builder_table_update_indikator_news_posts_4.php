<?php namespace Indikator\News\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateIndikatorNewsPosts4 extends Migration
{
    public function up()
    {
        Schema::table('indikator_news_posts', function($table)
        {
            $table->string('status', 1)->nullable()->change();
            $table->integer('statistics')->default(1)->change();
        });
    }
    
    public function down()
    {
        Schema::table('indikator_news_posts', function($table)
        {
            $table->string('status', 1)->nullable(false)->change();
            $table->integer('statistics')->default(0)->change();
        });
    }
}
