<?php

namespace App\Http\Controllers;

use Mail;
use App\Helper;
use App\Models\User;
use App\Models\Updates;
use App\Models\Bookmarks;
use App\Models\Categories;
use App\Models\StoryFonts;
use Illuminate\Http\Request;
use App\Models\AdminSettings;
use App\Models\LiveStreamings;
use App\Models\OfflineStreamings;
use App\Models\Widget;
use League\Glide\ServerFactory;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Validator;
use League\Glide\Responses\LaravelResponseFactory;

class HomeController extends Controller
{
  use Traits\Functions;

  public function __construct(Request $request, AdminSettings $settings)
  {
    $this->request = $request;
    try {
      // Check Datebase access
      $this->settings = $settings::first();
    } catch (\Exception $e) {
    }
  }

  /**
   * Homepage Section.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    try {
      // Check Datebase access
      $this->settings;
    } catch (\Exception $e) {
      // Redirect to Installer
      return redirect('install/script');
    }

    // Search Live Streaming
    $users = LiveStreamings::whereType('normal')
      // ->where('live_streamings.updated_at', '>', now()->subMinutes(5))
      ->leftjoin('users', 'users.id', '=', 'live_streamings.user_id')
      ->where('live_streamings.status', '0')
      ->where('users.blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

    $this->filterByGenderAge($users);

    $users = $users->orderBy('live_streamings.id', 'desc')
      ->select('live_streamings.*')
      ->paginate(12);


    $featureds = LiveStreamings::whereType('normal')
      // ->where('live_streamings.updated_at', '>', now()->subMinutes(5))
      ->leftjoin('users', 'users.id', '=', 'live_streamings.user_id')
      ->where('live_streamings.status', '0')
      ->where('users.featured', 'yes')
      ->where('users.blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

    $this->filterByGenderAge($featureds);

    $featureds = $featureds->orderBy('live_streamings.id', 'desc')
      ->select('live_streamings.*')
      ->paginate(12);


    $widgets = Widget::where('type','home')->orderBy('serial_no')->limit(5)->get();


    $c_streams = null;
    foreach($widgets as $widget){
      $content = $widget->content ?? null;
      if($content != null){
        $c_streams[$content->name] = LiveStreamings::whereType('normal')
        // ->where('live_streamings.updated_at', '>', now()->subMinutes(5))
        ->leftjoin('users', 'users.id', '=', 'live_streamings.user_id')
        ->where('live_streamings.status', '0')
        ->where('users.categories_id', 'LIKE', '%' . $content->id . '%')
        ->where('users.blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
        ->orderBy('live_streamings.id', 'desc')
        ->select('live_streamings.*')
        ->paginate(12);
      }
    }


    if ($this->request->input('page') > $users->lastPage()) {
      abort('404');
    }

    if (auth()->check()) {
      $user = auth()->user();
      // $users = $this->userExplore();

      $updates = auth()->user()->feed();

      $stories = auth()->user()->stories();

      $storyFonts = StoryFonts::get(['id', 'name']);

      if ($storyFonts->count()) {
        foreach ($storyFonts as $font) {
          $fonts[] = str_replace('+', ' ', $font->name);
        }
        $fonts = implode("|", $fonts);
      }

      // Pay Per Views User
      $payPerViewsUser = auth()->user()->payPerView()->count();

      return view('index.index', [
        'users' => $users,
        'featureds' => $featureds,
        'c_streams' => $c_streams,
        'user' => $user,
        'updates' => $updates,
        'hasPages' => $updates->hasPages(),
        'stories' => $stories,
        'fonts' => $fonts ?? null,
        'payPerViewsUser' => $payPerViewsUser ?? null
      ]);
    }

    return view('index.index', [
      'users' => $users,
      'featureds' => $featureds,
      'c_streams' => $c_streams
    ]);


    // Home Guest
    if (auth()->guest()) {
      if (config('settings.home_style') == 0) {
        $users = User::where('featured', 'yes')
          ->where('status', 'active')
          ->whereVerifiedId('yes')
          ->whereHideProfile('no')
          ->whereHas('plans', function ($query) {
            $query->where('status', '1');
          })
          ->where('id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
          ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
          ->with([
            'media' => fn ($q) =>
            $q->select('type')
          ])
          ->orWhere('featured', 'yes')
          ->where('status', 'active')
          ->whereVerifiedId('yes')
          ->whereHideProfile('no')
          ->whereFreeSubscription('yes')
          ->where('id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
          ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
          ->inRandomOrder()
          ->with([
            'media' => fn ($q) =>
            $q->select('type')
          ])
          ->paginate(6);
      }

      // Total creators
      $usersTotal = User::whereStatus('active')
        ->whereVerifiedId('yes')
        ->whereHas('plans', function ($query) {
          $query->where('status', '1');
        })
        ->whereHideProfile('no')
        ->orWhere('status', 'active')
        ->whereVerifiedId('yes')
        ->whereFreeSubscription('yes')
        ->whereHideProfile('no')
        ->count();

      $home = config('settings.home_style') == 0 ? 'home' : 'home-login';

      return view('index.' . $home, [
        'users' => $users ?? null,
        'usersTotal' => $usersTotal
      ]);
    } else {

      $users = $this->userExplore();

      $updates = auth()->user()->feed();

      $stories = auth()->user()->stories();

      $storyFonts = StoryFonts::get(['id', 'name']);

      if ($storyFonts->count()) {
        foreach ($storyFonts as $font) {
          $fonts[] = str_replace('+', ' ', $font->name);
        }
        $fonts = implode("|", $fonts);
      }

      // Pay Per Views User
      $payPerViewsUser = auth()->user()->payPerView()->count();


      return view('index.home-session', [
        'users' => $users,
        'updates' => $updates,
        'hasPages' => $updates->hasPages(),
        'stories' => $stories,
        'fonts' => $fonts ?? null,
        'payPerViewsUser' => $payPerViewsUser ?? null
      ]);
    }
  }

  public function ajaxUserUpdates()
  {
    $skip = $this->request->input('skip');

    $data = auth()->user()->feed($skip);

    return view('includes.updates', ['updates' => $data])->render();
  } //<--- End Method

  public function getVerifyAccount($confirmation_code)
  {
    if (
      auth()->guest()
      || auth()->check()
      && auth()->user()->confirmation_code == $confirmation_code
      && auth()->user()->status == 'pending'
    ) {
      $user = User::where('confirmation_code', $confirmation_code)->where('status', 'pending')->first();

      if ($user) {
        User::where('confirmation_code', $confirmation_code)
          ->where('status', 'pending')
          ->update(['status' => 'active', 'confirmation_code' => '']);

        if ($this->settings->autofollow_admin) {
          // Auto-follow Admin
          $this->autoFollowAdmin($user->id);
        }

        auth()->loginUsingId($user->id);

        // Insert Login Session
        $this->loginSession($user->id);

        $redirect = $this->request->input('r') ?: '/';

        return redirect($redirect)
          ->with([
            'success_verify' => true,
          ]);
      } else {
        return redirect('/')
          ->with([
            'error_verify' => true,
          ]);
      }
    } else {
      return redirect('/');
    }
  } // End Method

  public function creators($type = false)
  {
    abort_if(config('settings.disable_creators_section'), 404);

    $query = trim($this->request->input('q'));

    if ($type && !in_array($type, ['featured', 'more-active', 'new', 'free'])) {
      abort(404);
    }

    switch ($type) {
      case 'featured':
        $orderBy = 'featured_date';
        $title = __('general.featured_creators');
        break;

      case 'more-active':
        $orderBy = 'COUNT(updates.id)';
        $title = __('general.more_active_creators');
        break;

      case 'new':
        $orderBy = 'id';
        $title = __('general.new_creators');
        break;

      case 'free':
        $orderBy = 'free_subscription';
        $title = __('general.creators_with_free_subscription');
        break;

      default:
        $orderBy = 'COUNT(subscriptions.id)';
        $title = __('general.explore_our_creators');
        break;
    }

    $resultShowByPage = 12;

    // Search Creator
    if (strlen($query) >= 3) {
      $title = __('general.search') . ' "' . $query . '"';

      $users = User::where('users.status', 'active')
        ->where('username', 'LIKE', '%' . $query . '%')
        ->whereVerifiedId('yes')
        ->where('id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
        ->whereRelation('plans', 'status', '1')
        ->whereFreeSubscription('no')
        ->whereHideProfile('no')
        ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
        ->orWhere('users.status', 'active')
        ->whereVerifiedId('yes')
        ->where('id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
        ->whereFreeSubscription('yes')
        ->whereHideProfile('no')
        ->where('name', 'LIKE', '%' . $query . '%')
        ->whereHideName('no')
        ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
        ->orderBy('featured_date', 'desc')
        ->with([
          'plans:id,status', 'media' => fn ($q) =>
          $q->select('type')
        ])
        ->simplePaginate($resultShowByPage);
    } else {

      if ($type == 'free') {
        $users = User::where('users.status', 'active')
          ->whereVerifiedId('yes')
          ->where('id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
          ->whereFreeSubscription('yes')
          ->whereHideProfile('no')
          ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

        $this->filterByGenderAge($users);

        $users = $users->orderBy(\DB::raw($orderBy), 'desc')
          ->with([
            'plans', 'media' => fn ($q) =>
            $q->select('type')
          ])
          ->simplePaginate($resultShowByPage);
      } else {

        $data = User::where('users.status', 'active');

        $whereRawFeatured = $type == 'featured' ? 'featured = "yes"' : 'users.status = "active"';

        $data->where('users.status', 'active')
          ->whereVerifiedId('yes')
          ->where('users.id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
          ->whereRelation('plans', 'status', '1')
          ->whereFreeSubscription('no')
          ->whereHideProfile('no')
          ->whereRaw($whereRawFeatured)
          ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

        $this->filterByGenderAge($data);

        $data->orWhere('users.status', 'active')
          ->whereVerifiedId('yes')
          ->where('users.id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
          ->whereFreeSubscription('yes')
          ->whereHideProfile('no')
          ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
          ->whereRaw($whereRawFeatured);

        $this->filterByGenderAge($data);

        if ($type == 'more-active') {
          $data->leftjoin('updates', 'updates.user_id', '=', 'users.id');
        }

        if (!$type) {
          $data->leftjoin('plans', 'plans.user_id', '=', 'users.id')
            ->leftjoin('subscriptions', 'subscriptions.stripe_price', '=', 'plans.name');

          $data->orWhere('subscriptions.stripe_id', '=', '')
            ->where('ends_at', '>=', now())
            ->where('users.status', 'active')
            ->whereHideProfile('no')
            ->where('users.verified_id', 'yes')
            ->where('users.id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
            ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

          $this->filterByGenderAge($data);

          $data->orWhere('subscriptions.stripe_id', '<>', '')
            ->where('stripe_status', 'active')
            ->where('users.status', 'active')
            ->whereHideProfile('no')
            ->where('users.verified_id', 'yes')
            ->where('users.id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
            ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

          $this->filterByGenderAge($data);

          $data->orWhere('subscriptions.stripe_id', '=', '')
            ->whereFree('yes')
            ->where('users.status', 'active')
            ->whereHideProfile('no')
            ->where('users.verified_id', 'yes')
            ->where('users.id', '<>', config('settings.hide_admin_profile') == 'on' ? 1 : 0)
            ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

          $this->filterByGenderAge($data);
        }
        $users = $data->groupBy('users.id')
          ->orderBy(\DB::raw($orderBy), 'DESC')
          ->orderBy('users.id', 'ASC')
          ->select(
            'users.id',
            'users.name',
            'users.username',
            'users.avatar',
            'users.cover',
            'users.hide_name',
            'users.verified_id',
            'users.free_subscription',
            'users.featured'
          )
          ->with([
            'plans', 'media' => fn ($q) =>
            $q->select('type')
          ])
          ->simplePaginate($resultShowByPage);
      }
    }
    if (request()->ajax()) {
      return view('includes.ajax-listing-creators', ['users' => $users])->render();
    }

    return view('index.creators', [
      'users' => $users,
      'title' => $title
    ]);
  }
  private function getUsers($category){
    return LiveStreamings::whereType('normal')
    // ->where('live_streamings.updated_at', '>', now()->subMinutes(5))
    ->leftjoin('users', 'users.id', '=', 'live_streamings.user_id')
    ->where('live_streamings.status', '0')
    ->where('users.categories_id', 'LIKE', '%' . $category->id . '%')
    ->where('users.blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
    ->orderBy('live_streamings.id', 'desc')
    ->select('live_streamings.*')
    ->paginate(12);
  }
  private function getOffStreams($category){
    return OfflineStreamings::with('user')->where('offline_streamings.category_id', 'LIKE', '%' . $category->id . '%')
    ->orderBy('offline_streamings.id', 'desc')
    ->select('offline_streamings.*')->get();
  }
  public function category($slug, $type = false)
  {
    $category = Categories::where('slug', '=', $slug)->where('mode', 'on')->firstOrFail();
    $title    = \Lang::has('categories.' . $category->slug) ? __('categories.' . $category->slug) : $category->name;

    $data = array();
    $s_childs = array();
    $allCategories = array();
    if($category->parent_id == null || $category->parent->parent_id == null){
      $s_childs = $category->child;
      foreach ($s_childs as $key => $child) {
         $data[$child->name]["users"] =  $this->getUsers($child);
         $data[$child->name]["streams"] =  $this->getOffStreams($child);
      }
    }

    $data[$category->name]["users"] =   $this->getUsers($category);
    $data[$category->name]["streams"] =  $this->getOffStreams($category);
    $allCategories[] = $category->slug;
    $showAll = true;

    $childs = $category->child;
    $parent = $category->parent;
    if(!isset($parent)){
        $parent = $category;
    }

    if(isset($category->parent)){
        if($category->parent->parent_id == null){
            $s_childs = $category->parent->child;
        }
        $data[$category->parent->name]["users"] =   $this->getUsers($category->parent);
        $data[$category->parent->name]["streams"] =  $this->getOffStreams($category->parent);
        $allCategories[] = $category->parent->slug;
    }
    if(isset($category->parent->parent)){
        $childs = $category->parent->child;
        if($category->parent->parent->parent_id == null){
            $s_childs = $category->parent->parent->child;
        }
        $data[$category->parent->parent->name]["users"] =   $this->getUsers($category->parent->parent);
        $data[$category->parent->parent->name]["streams"] =  $this->getOffStreams($category->parent->parent);
        $allCategories[] = $category->parent->parent->slug;
        $showAll = false;

    }


    return view('index.live-categories', [
      'data' => $data,
      'title' => $title,
      'slug' => $slug,
      'parent' => $parent,
      'childs' => $childs,
      's_childs' => $s_childs,
      'image' => $category->image,
      'keywords' => $category->keywords,
      'description' => $category->description,
      'isCategory' => true,
      'allCategories' => $allCategories,
      'showAll' => $showAll
    ]);
  }

  public function contact()
  {
    abort_if($this->settings->disable_contact, 404);

    return view('index.contact');
  }

  public function contactStore(Request $request)
  {
    $input = $request->all();
    $request['_captcha'] = config('settings.captcha_contact');

    $errorMessages = [
      'g-recaptcha-response.required_if' => 'reCAPTCHA Error',
      'g-recaptcha-response.captcha' => 'reCAPTCHA Error',
    ];

    $validator = Validator::make($input, [
      'full_name' => 'min:3|max:25',
      'email'     => 'required|email',
      'subject'     => 'required',
      'message' => 'min:10|required',
      'g-recaptcha-response' => 'required_if:_captcha,==,on|captcha',
      'agree_terms_privacy' => 'required'
    ], $errorMessages);

    if ($validator->fails()) {
      return redirect('contact')
        ->withInput()->withErrors($validator);
    }

    // SEND EMAIL TO SUPPORT
    $fullname    = $input['full_name'];
    $email_user  = $input['email'];
    $title_site  = config('settings.title');
    $subject     = $input['subject'];
    $email_reply = config('settings.email_admin');

    try {
      Mail::send(
        'emails.contact-email',
        [
          'full_name' => $input['full_name'],
          'email' => $input['email'],
          'subject' => $input['subject'],
          '_message' => $input['message']
        ],
        function ($message) use (
          $fullname,
          $email_user,
          $title_site,
          $email_reply,
          $subject
        ) {
          $message->from($email_reply, $fullname);
          $message->subject(__('general.message') . ' - ' . $subject . ' - ' . $email_user);
          $message->to($email_reply, $title_site);
          $message->replyTo($email_user);
        }
      );
    } catch (\Exception $e) {
      return redirect('contact')->withInput()->withErrors($e->getMessage());
    }

    return redirect('contact')->with(['notification' => __('general.send_contact_success')]);
  }

  // Dark Mode
  public function darkMode($mode)
  {
    if ($mode == 'dark') {
      auth()->user()->dark_mode = 'on';
      auth()->user()->save();
    } else {
      auth()->user()->dark_mode = 'off';
      auth()->user()->save();
    }

    return redirect()->back();
  }

  // Add Bookmark
  public function addBookmark()
  {
    // Find post exists
    $post = Updates::findOrFail($this->request->id);

    $bookmark = Bookmarks::firstOrNew([
      'user_id' => auth()->user()->id,
      'updates_id' => $this->request->id
    ]);

    if ($bookmark->exists) {
      $bookmark->delete();

      return response()->json([
        'success' => true,
        'type' => 'deleted'
      ]);
    } else {
      $bookmark->save();

      return response()->json([
        'success' => true,
        'type' => 'added'
      ]);
    }
  } // End addBookmark

  public function searchCreator()
  {
    $query = $this->request->get('user');
    $data = "";

    if ($query != '' && strlen($query) >= 2) {
      $sql = User::where('status', 'active')
        ->where('username', 'LIKE', '%' . $query . '%')
        ->whereVerifiedId('yes')
        ->where('id', '<>', $this->settings->hide_admin_profile == 'on' ? 1 : 0)
        ->whereRelation('plans', 'status', '1')
        ->whereFreeSubscription('no')
        ->whereHideProfile('no')
        ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')

        ->orWhere('name', 'LIKE', '%' . $query . '%')
        ->whereVerifiedId('yes')
        ->where('id', '<>', $this->settings->hide_admin_profile == 'on' ? 1 : 0)
        ->whereRelation('plans', 'status', '1')
        ->whereFreeSubscription('no')
        ->whereHideProfile('no')
        ->whereHideName('no')
        ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')

        ->orWhere('status', 'active')
        ->where('username', 'LIKE', '%' . $query . '%')
        ->whereVerifiedId('yes')
        ->where('id', '<>', $this->settings->hide_admin_profile == 'on' ? 1 : 0)
        ->whereFreeSubscription('yes')
        ->whereHideProfile('no')
        ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')

        ->orWhere('status', 'active')
        ->where('name', 'LIKE', '%' . $query . '%')
        ->whereVerifiedId('yes')
        ->where('id', '<>', $this->settings->hide_admin_profile == 'on' ? 1 : 0)
        ->whereFreeSubscription('yes')
        ->whereHideProfile('no')
        ->whereHideName('no')
        ->where('blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%')
        ->orderBy('id', 'desc')
        ->take(4)
        ->get();

      if ($sql) {
        foreach ($sql as $user) {

          $name = $user->hide_name == 'yes' ? $user->username : $user->name;
          $description = $user->profession ?: '@' . $user->username;

          $data .= '<div class="card border-0">
  							<div class="list-group list-group-sm list-group-flush">
                 <a href="' . url($user->username) . '" class="list-group-item list-group-item-action text-decoration-none py-2 px-3 bg-autocomplete">
                   <div class="media">
                    <div class="media-left mr-3 position-relative">
                        <img class="media-object rounded-circle" src="' . Helper::getFile(config('path.avatar') . $user->avatar) . '" width="30" height="30">
                    </div>
                    <div class="media-body overflow-hidden">
                      <div class="d-flex justify-content-between align-items-center">
                       <h6 class="media-heading mb-0 text-truncate">
                            ' . $name . '
                        </h6>
                      </div>
  										<small class="text-truncate m-0 w-100 text-left d-block mt-1">' . $description . '</small>
                    </div>
                </div>
                  </a>
               </div>
  					 </div>';
        }
        return $data;
      }
    }
  } // End Method

  public function refreshCreators()
  {
    $type = $this->request->type == 'free' ?: false;
    $users = $this->userExplore($type);

    return view('includes.listing-explore-creators', ['users' => $users])->render();
  }

  public function creatorsBroadcastingLive()
  {
    // Search Live Streaming
    $users = LiveStreamings::whereType('normal')
      // ->where('live_streamings.updated_at', '>', now()->subMinutes(5))
      ->leftjoin('users', 'users.id', '=', 'live_streamings.user_id')
      ->where('live_streamings.status', '0')
      ->where('users.blocked_countries', 'NOT LIKE', '%' . Helper::userCountry() . '%');

    $this->filterByGenderAge($users);

    $users = $users->orderBy('live_streamings.id', 'desc')
      ->select('live_streamings.*')
      ->paginate(20);

    if ($this->request->input('page') > $users->lastPage()) {
      abort('404');
    }

    $widgets = Widget::where('type','header')->orderBy('serial_no')->limit(1)->get();
    $w_categories = [];
    foreach($widgets as $widget){
        $content = $widget->content ?? null;
        if($content != null){
            $w_categories[$content->name] = $content->child;
        }
    }

    return view('index.creators-live', [
      'users' => $users,
      'w_categories' => $w_categories
    ]);
  }

  public function resizeImage($path, $size, $file)
  {
    try {
      $server = ServerFactory::create([
        'response' => new LaravelResponseFactory(app('request')),
        'source' => Storage::disk()->getDriver(),
        'cache' => Storage::disk()->getDriver(),
        'source_path_prefix' => "uploads/{$path}",
        'cache_path_prefix' => '.cache',
        'base_url' => "uploads/{$path}",
        'group_cache_in_folders' => false
      ]);

      $server->outputImage($file, [
        'w' => $size,
        'h' => request('crop') == 'fit' ? $size : false,
        'fit' => request('crop') == 'fit' ? 'crop-left' : false
      ]);
    } catch (\Exception $e) {
      \Log::debug($e->getMessage());

      abort(404);
      $server->deleteCache($file);
    }
  }
}
