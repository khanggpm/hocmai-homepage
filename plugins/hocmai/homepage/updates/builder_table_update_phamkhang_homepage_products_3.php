<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageProducts3 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_homepage_products', function($table)
        {
            $table->dropColumn('info_id');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_homepage_products', function($table)
        {
            $table->integer('info_id');
        });
    }
}
