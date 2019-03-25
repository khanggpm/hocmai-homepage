<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageInfo4 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_homepage_info', function($table)
        {
            $table->string('title_product')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_homepage_info', function($table)
        {
            $table->dropColumn('title_product');
        });
    }
}
