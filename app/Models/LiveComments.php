<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LiveComments extends Model
{
    use HasFactory;

    protected $fillable = [
      'user_id',
      'live_streamings_id'
    ];

    public function user()
    {
      return $this->belongsTo(User::class)->first();
    }

    public function gift()
    {
      return $this->belongsTo(Gift::class)->where('status', true);
    }
}
