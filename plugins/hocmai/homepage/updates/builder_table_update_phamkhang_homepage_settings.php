<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageSettings extends Migration
{
    public function up()
    {
        Schema::table('hocmai_homepage_settings', function($table)
        {
            $table->string('header_banner_news');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_homepage_settings', function($table)
        {
            $table->dropColumn('header_banner_news');
        });
    }
}
