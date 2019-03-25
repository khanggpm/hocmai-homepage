<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageEvents2 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_homepage_events', function($table)
        {
            $table->string('title')->change();
            $table->string('address')->change();
            $table->dateTime('end_date')->nullable()->change();
            $table->string('content')->change();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_homepage_events', function($table)
        {
            $table->string('title', 191)->change();
            $table->string('address', 191)->change();
            $table->dateTime('end_date')->nullable(false)->change();
            $table->string('content', 191)->change();
        });
    }
}
