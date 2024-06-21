<?php

namespace App\Http\Controllers;

use Image;
use App\Helper;
use FileUploader;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Updates;
use App\Models\Messages;
use Illuminate\Http\File;
use Illuminate\Http\Request;
use App\Models\AdminSettings;
use App\Models\LiveStreamings;
use Illuminate\Support\Facades\Storage;

class UploadMediaLivestreamController extends Controller
{

	public function __construct(AdminSettings $settings, Request $request)
	{
		$this->settings = $settings::select(
			'maximum_files_post',
			'file_size_allowed',
			'watermark',
			'video_encoding'
			)->first();
		$this->request = $request;
	}

	/**
     * Submit the form
     *
     * @return void
     */
	public function store() 
	{
		$publicPath = public_path('temp/');
		$file = strtolower(auth()->id().uniqid().time().str_random(20));

		if ($this->settings->video_encoding == 'off') {
			$extensions = ['png','jpeg','jpg','gif'];
		} else {
			$extensions = [
				'png',
				'jpeg',
				'jpg',
				'gif',
	    	];
		}

		// initialize FileUploader
		$FileUploader = new FileUploader('livestream_image', array(
			'limit' => 1,
			'fileMaxSize' => floor($this->settings->file_size_allowed / 1024),
			'extensions' => $extensions,
			'title' => $file,
			'uploadDir' => $publicPath
		));

		// upload
		$upload = $FileUploader->upload();

		if ($upload['isSuccess']) {
			foreach($upload['files'] as $key=>$item) {
				$upload['files'][$key] = [
					'extension' => $item['extension'],
					'format' => $item['format'],
					'name' => $item['name'],
					'size' => $item['size'],
					'size2' => $item['size2'],
					'type' => $item['type'],
					'uploaded' => true,
					'replaced' => false
				];

				switch ($item['format']) {
					case 'image':
							$this->resizeImage($item['name'], $item['extension']);
						break;

					case 'video':
							$this->uploadVideo($item['name']);
						break;
				}
			}// foreach

		}// upload isSuccess

		return response()->json($upload);
	}

	/**
     * Resize image and add watermark
     *
     * @return void
     */
	protected function resizeImage($image, $extension)
	{
		$fileName = $image;
		$image = public_path('temp/').$image;
		$path = config('path.livestream');
		$img   = Image::make($image);
		$url   = ucfirst(Helper::urlToDomain(url('/')));

		$width     = $img->width();
		$height    = $img->height();

		if ($extension == 'gif') {
			$this->insertImage($fileName);

			// Move file to Storage
			$this->moveFileStorage($fileName, $path);

		} else {
			//=============== Image Large =================//
			if ($width > 2000) {
				$scale = 2000;
			} else {
				$scale = $width;
			}

			// Calculate font size
			if ($width >= 400 && $width < 900) {
				$fontSize = 18;
			} elseif ($width >= 800 && $width < 1200) {
				$fontSize = 24;
			} elseif ($width >= 1200 && $width < 2000) {
				$fontSize = 32;
			} elseif ($width >= 2000 && $width < 3000) {
				$fontSize = 50;
			} elseif ($width >= 3000) {
				$fontSize = 75;
			} else {
				$fontSize = 0;
			}

			if ($this->settings->watermark == 'on') {
				$img->orientate()->resize($scale, null, function ($constraint) {
					$constraint->aspectRatio();
					$constraint->upsize();
				})->text($url.'/'.auth()->user()->username, $img->width() - 20, $img->height() - 10, function($font)
						use ($fontSize) {
						$font->file(public_path('webfonts/arial.TTF'));
						$font->size($fontSize);
						$font->color('#eaeaea');
						$font->align('right');
						$font->valign('bottom');
				})->save();
			} else {
				$img->orientate()->resize($scale, null, function ($constraint) {
					$constraint->aspectRatio();
					$constraint->upsize();
				})->save();
			}

			// Insert in Database
			$this->insertImage($fileName);

			// Move file to Storage
			$this->moveFileStorage($fileName, $path);
		}

	 }// End method resizeImage

	 /**
        * Insert Image to Database
        *
        * @return void
        */
        protected function insertImage($image)
        {
            LiveStreamings::create([
                'user_id' => auth()->id(),
                'livestream_image' => $image,
                'name' => 'photo'.rand(0,9),
                'channel' => 'live_' . str_random(5) . '_' . auth()->id(),
                'price' => 0,
                'availability' =>  'everyone_free'
            ]);

        }// end method insertImage

	/**
	 * Upload Video
	*
	* @return void
	*/
	protected function uploadVideo($video)
	{
		$path = config('path.livestream');
		
		LiveStreamings::create([
            'user_id' => auth()->id(),
            'livestream_image' => $video,
            'name' => 'photo'.rand(0,9),
            'channel' => 'live_' . str_random(5) . '_' . auth()->id(),
            'price' => 0,
            'availability' =>  'everyone_free'
        ]);

		  // Move file to Storage
		  if ($this->settings->video_encoding == 'off') {
			$this->moveFileStorage($video, $path);
		}
	}

	/**
	 * Move file to Storage
	*
	* @return void
	*/
	protected function moveFileStorage($file, $path)
	{
		$localFile = public_path('temp/'.$file);

        // dd($localFile);
		
		// Move the file...
       if( Storage::putFileAs($path, new File($localFile), $file)){
           unlink($localFile);
       }
		
		// Delete temp file

	} // end method moveFileStorage

	/**
     * Delete a file
     *
     * @return void
     */
	public function delete()
	{
		// PATH
		$local = 'temp/';

		LiveStreamings::where('livestream_image', $this->request->file)->delete();

		// Delete local file
		Storage::disk('default')->delete($local.$this->request->file);
		
		return response()->json([
        'success' => true
	 ]);
	}// End method

}