<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentDetails extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->integer('status')->default(0);
            $table->increments('id')->unsigned(false)->change();
            $table->string('name')->change();
            $table->string('slug')->change();
            $table->string('job_desc')->change();
            $table->string('job_requirements')->change();
            $table->string('job_position')->change();
            $table->string('entitlements')->change();
            $table->string('working_time')->change();
            $table->string('slots')->change();
            $table->string('work_experience')->change();
            $table->string('work_address')->change();
            $table->string('wage')->change();
            $table->string('deadline_type')->change();
            $table->string('contact')->change();
            $table->string('email')->change();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->dropColumn('status');
            $table->increments('id')->unsigned()->change();
            $table->string('name', 191)->change();
            $table->string('slug', 191)->change();
            $table->string('job_desc', 191)->change();
            $table->string('job_requirements', 191)->change();
            $table->string('job_position', 191)->change();
            $table->string('entitlements', 191)->change();
            $table->string('working_time', 191)->change();
            $table->string('slots', 191)->change();
            $table->string('work_experience', 191)->change();
            $table->string('work_address', 191)->change();
            $table->string('wage', 191)->change();
            $table->string('deadline_type', 191)->change();
            $table->string('contact', 191)->change();
            $table->string('email', 191)->change();
        });
    }
}
