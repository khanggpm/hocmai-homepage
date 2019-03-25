<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentJobs3 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_jobs', function($table)
        {
            $table->text('name')->nullable()->change();
            $table->string('images', 191)->nullable()->change();
            $table->string('rank_job')->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_jobs', function($table)
        {
            $table->text('name')->nullable(false)->change();
            $table->string('images', 191)->nullable(false)->change();
            $table->string('rank_job', 191)->nullable(false)->change();
        });
    }
}
