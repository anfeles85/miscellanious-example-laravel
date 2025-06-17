<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $table = 'employee';
    protected $fillable = ['document', 'fullname', 'address', 'phone', 'type_id'];

    public function employee_type()
    {
        return $this->belongsTo(EmployeeType::class, 'type_id');
    }
}
