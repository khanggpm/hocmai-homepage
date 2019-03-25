<?php namespace Hocmai\Recruitment\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateHocmaiRecruitmentSlider extends Migration
{
    public function up()
    {
        Schema::create('hocmai_recruitment_slider', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('image');
            $table->integer('order');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('hocmai_recruitment_slider');
    }
}
