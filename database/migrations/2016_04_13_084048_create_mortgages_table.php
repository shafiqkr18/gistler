<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMortgagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mortgages', function (Blueprint $table) {
            $table->increments('id');
            $table->string('bank_name');
            $table->decimal('min_salary', 9, 2);
            $table->decimal('down_payment', 9, 2);
            $table->decimal('monthly_payment', 9, 2);
            $table->string('rate_percentage');
            $table->tinyInteger('rate_status');
            $table->tinyInteger('loan_type');
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
        Schema::drop('mortgages');
    }
}
