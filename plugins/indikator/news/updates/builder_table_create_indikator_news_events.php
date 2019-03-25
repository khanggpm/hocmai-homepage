<?php namespace Indikator\News\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateIndikatorNewsEvents extends Migration
{
    public function up()
    {
        Schema::create('indikator_news_events', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title');
            $table->string('address');
            $table->dateTime('start_date');
            $table->dateTime('end_date')->nullable();
            $table->string('content');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('indikator_news_events');
    }
}
