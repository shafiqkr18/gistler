<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHomeServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('HomeServices', function (Blueprint $table) {
            $table->increments('id');
            $table->string('company_name');
            $table->integer('region_id');
            $table->integer('area_location_id');
            $table->integer('sub_area_location_id');
            $table->string('company_email');
            $table->string('company_phone');
            $table->string('company_fax');
            $table->string('company_website');
            $table->string('company_license');
            $table->string('lat');
            $table->string('lon');
            $table->integer('user_id');
            $table->tinyInteger('status');
            $table->tinyInteger('is_active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('HomeServices');
    }
}
