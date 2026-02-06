<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCajasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cajas', function (Blueprint $table) {
            $table->increments('id'); // ID simple para tu versión de Laravel
            $table->unsignedInteger('user_id'); // Tipo Integer para coincidir con tu tabla users
            $table->decimal('monto_inicial', 12, 2);
            $table->decimal('monto_final', 12, 2)->nullable();
            $table->enum('estado', ['abierta', 'cerrada'])->default('abierta');
            $table->timestamp('abierta_at')->useCurrent();
            $table->timestamp('cerrada_at')->nullable();
            $table->timestamps();

            // Relación con usuarios
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cajas');
    }
}
