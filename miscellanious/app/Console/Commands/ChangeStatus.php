<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Record;
use Illuminate\Support\Carbon;

class ChangeStatus extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'status:cancel-records';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Cambia el campo status de los records que están pendientes con fecha menor a la actual';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $today = Carbon::today(); // Fecha de hoy (sin hora)
        
        $records = Record::where('status', 'PENDIENTE')
            ->where('date_record', '<', $today) 
            ->update(['status' => 'CANCELADO']);

        $this->info("Se actualizaron {$records} registros a CANCELADO.");
        \Log::info("Actualizados {$records} registros a CANCELADO.");
    }
}
