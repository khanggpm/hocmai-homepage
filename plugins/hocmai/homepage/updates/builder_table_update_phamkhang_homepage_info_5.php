<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageInfo5 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_homepage_info', function($table)
        {
            $table->string('image1');
            $table->string('image2');
            $table->string('image3');
            $table->string('image4');
            $table->string('url1');
            $table->string('url2');
            $table->string('url3');
            $table->string('url4');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_homepage_info', function($table)
        {
            $table->dropColumn('image1');
            $table->dropColumn('image2');
            $table->dropColumn('image3');
            $table->dropColumn('image4');
            $table->dropColumn('url1');
            $table->dropColumn('url2');
            $table->dropColumn('url3');
            $table->dropColumn('url4');
        });
    }
}
