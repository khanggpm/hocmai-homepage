<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageInfo2 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_homepage_info', function($table)
        {
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_homepage_info', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
