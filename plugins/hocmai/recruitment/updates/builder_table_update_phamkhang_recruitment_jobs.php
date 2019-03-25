<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentJobs extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_jobs', function($table)
        {
            $table->string('images');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_jobs', function($table)
        {
            $table->dropColumn('images');
        });
    }
}
