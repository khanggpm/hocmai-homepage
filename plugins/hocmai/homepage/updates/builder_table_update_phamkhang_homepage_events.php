<?php namespace hocmai\Homepage\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiHomepageEvents extends Migration
{
    public function up()
    {
        Schema::table('hocmai_homepage_events', function($table)
        {
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
            $table->increments('id')->unsigned(false)->change();
            $table->string('title')->change();
            $table->string('address')->change();
            $table->string('content')->change();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_homepage_events', function($table)
        {
            $table->dropColumn('created_at');
            $table->dropColumn('updated_at');
            $table->increments('id')->unsigned()->change();
            $table->string('title', 191)->change();
            $table->string('address', 191)->change();
            $table->string('content', 191)->change();
        });
    }
}
