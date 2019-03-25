<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentJobs2 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_jobs', function($table)
        {
            $table->string('rank_job');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_jobs', function($table)
        {
            $table->dropColumn('rank_job');
        });
    }
}
