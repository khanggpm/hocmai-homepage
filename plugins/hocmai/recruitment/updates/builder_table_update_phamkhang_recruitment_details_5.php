<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentDetails5 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->string('job_position', 191)->nullable()->change();
            $table->string('entitlements', 191)->nullable()->change();
            $table->string('working_time', 191)->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->string('job_position', 191)->nullable(false)->change();
            $table->string('entitlements', 191)->nullable(false)->change();
            $table->string('working_time', 191)->nullable(false)->change();
        });
    }
}
