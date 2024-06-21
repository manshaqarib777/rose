<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class OfflineStreamings extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'user_id',
        'category_id',
        'classification',
        'thumbnail',
        'content',
        'script',
        'vr_check'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function category()
    {
        return $this->belongsTo(Categories::class);
    }
}
