<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    #One to Many
    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function randevu(){
        return $this->hasMany(Randevu::class);
    }
}
