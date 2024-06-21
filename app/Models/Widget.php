<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Widget extends Model
{
    use HasFactory;

    protected $table = 'widgets';
    protected $guarded = [];

    /**
     * Get the content that owns the Widget
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function content()
    {
        return $this->belongsTo(Categories::class, 'content_id', 'id');
    }

}
