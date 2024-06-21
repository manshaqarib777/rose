<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
	protected $guarded = [];
	public $timestamps = false;

	/**
	 * Get the parent that owns the Categories
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
	 */
	public function parent()
	{
		return $this->belongsTo(Categories::class, 'parent_id', 'id');
	}

	/**
	 * Get all of the child for the Categories
	 *
	 * @return \Illuminate\Database\Eloquent\Relations\HasMany
	 */
	public function child()
	{
		return $this->hasMany(Categories::class, 'parent_id', 'id');
	}

	public function users()
	{
		return $this->hasMany(User::class)->where('status','active');
	}
}
