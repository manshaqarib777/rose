<?php

namespace App\Http\Controllers;

use App\Models\OfflineStreamings;
use App\Events\LiveBroadcasting;
use App\Models\Categories;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class OfflineStreamingsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create(Request $request)
    {
        $request->validate([
            'classification' => 'required',
            'category_id' => 'required|exists:categories,id',
            'fileuploader-list-thumbnail' => 'required',
            'fileuploader-list-content' => 'required',
            'fileuploader-list-script' => 'required_if:classification,r-vod,gif,audio',
        ]);

        $offline          = new OfflineStreamings();
        $offline->user_id = auth()->id();
        $offline->classification    = $request->input('classification');
        $offline->vr_check = $request->vr_check ? true : false;
        $offline->category_id = $request->input('category_id');

        $thumbnail = $request->input('fileuploader-list-thumbnail');
        $thumbnail = json_decode($thumbnail, true);
        if($thumbnail) {
            $offline->thumbnail   = $thumbnail[0]['file'];
        }

        $content = $request->input('fileuploader-list-content');
        $content = json_decode($content, true);
        if($content) {
            $offline->content   = $content[0]['file'];
        }

        $script = $request->input('fileuploader-list-script');
        $script = json_decode($script, true);
        if($script) {
            $offline->script   = $script[0]['file'];
        }


        $offline->save();

        if(request()->ajax()) {
            return response()->json([
              'success' => true,
              'url' => url('category', $offline->category->slug)
            ]);
        }

        return redirect()->to(url('category', $offline->category->slug));

    }
}
