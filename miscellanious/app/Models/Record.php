<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Record extends Model
{
    use HasFactory;
    protected $table = 'record';
    protected $fillable = ['date_record', 'start_time', 'end_time', 'employee_id', 'key_id', 'status'];
    const UPDATED_AT = null; //se pone null para que laravel eloquent no lo tenga en cuenta en las consultas, este campo no existe
}
