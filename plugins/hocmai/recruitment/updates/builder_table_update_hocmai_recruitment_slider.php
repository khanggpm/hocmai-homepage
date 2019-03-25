<?php namespace Hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateHocmaiRecruitmentSlider extends Migration
{
    public function up()
    {
        Schema::table('hocmai_recruitment_slider', function($table)
        {
            $table->string('job_name');
            $table->string('rank');
        });
    }
    
    public function down()
    {
        Schema::table('hocmai_recruitment_slider', function($table)
        {
            $table->dropColumn('job_name');
            $table->dropColumn('rank');
        });
    }
}
