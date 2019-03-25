<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentDetails4 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->integer('jobs_id')->nullable();
            $table->string('name', 191)->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->dropColumn('jobs_id');
            $table->string('name', 191)->nullable(false)->change();
        });
    }
}
