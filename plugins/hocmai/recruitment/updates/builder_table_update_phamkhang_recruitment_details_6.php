<?php namespace hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatehocmaiRecruitmentDetails6 extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->string('job_desc', 191)->nullable()->change();
            $table->string('job_requirements', 191)->nullable()->change();
            $table->string('slots', 191)->nullable()->change();
            $table->string('work_experience', 191)->nullable()->change();
            $table->string('work_address', 191)->nullable()->change();
            $table->string('wage', 191)->nullable()->change();
            $table->string('deadline_type', 191)->nullable()->change();
            $table->string('contact', 191)->nullable()->change();
            $table->string('email', 191)->nullable()->change();
            $table->integer('phone')->nullable()->change();
            $table->dateTime('deadline')->nullable()->change();
            $table->integer('status')->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_details', function($table)
        {
            $table->string('job_desc', 191)->nullable(false)->change();
            $table->string('job_requirements', 191)->nullable(false)->change();
            $table->string('slots', 191)->nullable(false)->change();
            $table->string('work_experience', 191)->nullable(false)->change();
            $table->string('work_address', 191)->nullable(false)->change();
            $table->string('wage', 191)->nullable(false)->change();
            $table->string('deadline_type', 191)->nullable(false)->change();
            $table->string('contact', 191)->nullable(false)->change();
            $table->string('email', 191)->nullable(false)->change();
            $table->integer('phone')->nullable(false)->change();
            $table->dateTime('deadline')->nullable(false)->change();
            $table->integer('status')->nullable(false)->change();
        });
    }
}
