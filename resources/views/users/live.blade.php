@extends('layouts.app')

@section('title'){{__('general.live_streaming')}} {{__('general.by')}} {{ '@'.$creator->username }} -@endsection

  @section('css')

  <style>
    /* .live-bottom-menu{
    width: 100%;
    padding: 1rem !important;
    position: absolute;
    bottom: 0px;
    right: 0;
    z-index: 200;
    } */
 
    .new_container{
        height: 80%;
        max-width:95%
    }
    .live-bottom-menu {
 
    padding: 1rem !important;
    position: absolute;
    bottom: 0;
    right: 0;
    z-index: 1;
    left: 46%;
    justify-items: flex-end;
    /* margin: auto; */
}
   
    .user_det {
    display: flex;
    flex-direction: row;
    margin-left:80px;
    justify-content:flex-start;
    margin-top:10px;
    }
    .img figure {
    width: 48px;
    }
    img.user-img {
    width: 100%;
    border-radius:100%;

    }
    .user_cont h4 {
    font-size: 20px;
    font-family: 'bootstrap-icons';
    text-transform: uppercase;
    margin-left: 18px;

    line-height: 1;

    }  
    .user_cont p {
    font-size: 18px;
    font-family: 'bootstrap-icons';
    font-weight: 500;
    margin-left: 19px;
    line-height: 1;
    
    } 
    
    .user_btn a {
    text-decoration: none;
    background-color: #E831F3;
    padding: 03px 30px 03px 30px;
    border-radius: 50px;
    justify-items: center;
    margin: auto;
    display: flex;
    align-content: center;
    margin-top: 11px;
    margin-left: 60px;
    filter: drop-shadow(4px 4px 5px #000000);
    font-size: 15px;
    font-family: 'bootstrap-icons';
    }
    button.start-btn {
    text-decoration: none;
    background-color: #E831F3;
    padding: 03px 30px 03px 30px;
    border-radius: 50px;
    justify-items: center;
    margin: auto;
    text-transform: uppercase;
    align-content: center;
    margin-top: 8px;
   
    filter: drop-shadow(4px 4px 5px #000000);
    font-size: 15px;
    font-family: 'bootstrap-icons';
    color: white;
}
button.link-btn {
    text-decoration: none;
    background-color: #E831F3;
    padding: 03px 30px 03px 30px;
    border-radius: 50px;
    justify-items: center;
    margin: auto;
    text-transform: uppercase;
    align-content: center;
    margin-top: 8px;
   
    filter: drop-shadow(4px 4px 5px #000000);
    font-size: 15px;
    font-family: 'bootstrap-icons';
    color: white;
}
button.size-btn {
    text-decoration: none;
    background-color: #E831F3;
    padding: 03px 30px 03px 30px;
    border-radius: 50px;
    justify-items: center;
    margin: auto;
    align-content: center;
    margin-top: 8px;
    filter: drop-shadow(4px 4px 5px #000000);
    font-size: 15px;
    font-family: 'bootstrap-icons';
    color: white;
    text-transform: uppercase;
}
.h-100 {
    height: 97% !important;
}
.add-user figure {
    width: 28px;
}
img.add-user {
    width: 100%;
}
.add-user {
    position: absolute;
    left: 163px;
    bottom: 8px;
}
.div-liv-1 {
    display: flex;
    flex-direction: column;
}
.red a {
    background-color: red;
    padding: 5px 10px 5px 10px;
    border-radius: 6px;
    justify-items: flex-end;
    margin: auto;
    display: flex;
    flex-direction: column;
    align-items: end;
    width: 42%;
    justify-content: flex-end;
}
.red {
    display: flex;
    flex-direction: row;
    width: 100%;
    /* justify-content: flex-end; */
    margin-left: 56px;
}

img.list-1 {
    width: 100%;
    border: 2px solid red;
    border-radius: 50%;
}
.picture figure {
    width: 66px;
}
.picture {
    display: flex;
    flex-direction: row;
    width: 100%;
}
.picture p {
    font-size: 12px;
    width: 100%;
    justify-content: flex-start;
    margin-left: 6px;
    margin-top: 18px;
    font-family: 'bootstrap-icons';
    font-weight: 500;
}
.div-liv-1 {
    gap: 1rem;
}
.div-liv-1 {
    background-image: url("https://rose-trip.com/public/img/list_1.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.div-liv-2 {
    background-image: url("https://rose-trip.com/public/img/list_2.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.md-5 {
    background-image: url("https://rose-trip.com/public/img/list_4.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.div-liv-3 {
    background-image: url("https://rose-trip.com/public/img/list_1.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.div-liv-4 {
    background-image: url("https://rose-trip.com/public/img/list_2.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.box-videos-2 {
    display: flex;
    flex-direction: row;
    margin-top: 10px;
}
.div-liv-7 {
    background-image: url("https://rose-trip.com/public/img/list_4.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.div-liv-8 {
    background-image: url("https://rose-trip.com/public/img/list_1.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.div-liv-9 {
    background-image: url("https://rose-trip.com/public/img/list_2.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.div-liv-10 {
    background-image: url("https://rose-trip.com/public/img/list_4.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
.div-liv-11 {
    background-image: url("https://rose-trip.com/public/img/list_1.jpeg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    min-width: 100%;
    min-height: 100%;
}
    section.section.pt-0.pb-0.h-100.section-msg.live-data {
    background-color: #581660;
    margin-top:-14px;
    }

    .new.container {
      margin: auto;
    max-width: 96%;
  }
  .new_heading {
    margin-top:2%;
    font-size: 30px;
    font-weight: 500;
}
    .new_box {
          position: relative;
        background-size: cover;
        background-position: center;
        height: 150px;
        margin-bottom: 20px;
        border-radius: 14px 14px 0px 0px;
        }
        .new_tag {
          position: absolute;
          top: 4px;
          left: 73%;
          padding: 2px 5px;
          background-color: #ff4500;
          color: #fff;
          border-radius: 5px;
        }
        .new_profile {
            position: absolute;
            bottom: 10px;
            left: 10px;
            display: flex;
            align-items: center;
        }
        .new_profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }
        .new_profile .name {
            color: #fff;
        }
  </style>
    <script type="text/javascript">
        var liveOnline = {{ $live ? 'true' : 'false' }};
        @if ($live)
          var appIdAgora = '{{ $settings->agora_app_id }}'; // set app id
          var agorachannelName = '{{ $live->channel }}'; // set channel name
          var liveMode = true;
          var liveType = '{{ $live->type }}';
          var liveCreator = {{ $creator->id == auth()->id() ? 'true' : 'false' }};
          var role = "{{ $creator->id == auth()->id() ? 'host' : 'audience' }}";
          var availability = '{{ $live->availability }}';
          var textMuteAudio = "{{ __('general.mute_audio') }}";
          var textUnmuteAudio = "{{ __('general.unmute_audio') }}";
          var textMuteVideo = "{{ __('general.mute_video') }}";
          var textUnmuteVideo = "{{ __('general.unmute_video') }}";
        @endif
    </script>

    @if ($live)
      <script src="{{ asset('public/js/agora/AgoraRTCSDK-v4.js') }}"></script>
    @endif
  @endsection

@section('content')
<section class="section  pt-0 pb-0 h-100 section-msg live-data" @if ($live) data="{{ $live->id}}" data-creator="{{ $creator->id}}" @endif>
    <div class="user_det">
        <div class="img">
            <figure>
             <img src="{{Helper::getFile(config('path.avatar').$creator->avatar)}}" alt="user_img" class="user-img">
             </figure>       
            </div>
        <div class="user_cont">
            <h4>Coach</h4>
            <p>Lets fun with me today</p>
        </div>
        <div class="user_btn">
           <a href="#"> S-VIP Join</a>
        </div>
    </div>  
    <div class="container  new_container">
        <div class="row justify-content-center h-100 position-relative">

          <div class="col-md-9 h-100 p-0 liveContainerFullScreen" @if ($live) data-id="{{ $live->id }}" @endif>
            <div class="card w-100 rounded-0 h-100 border-0 liveContainer @if (! $live) live_offline @endif" @if (! $live) style="background:url('{{Helper::getFile(config('path.avatar').$creator->avatar)}}') no-repeat center center; background-size: cover; background-color: #000;" @endif>

              <div class="content @if (! $live) px-4 py-3 @endif d-scrollbars container-msg">
                @if (! $live)
                  <div class="flex-column d-flex justify-content-center text-center h-100 text-content-live">
                    <div class="w-100">

                      @if (! $live && $creator->id == auth()->id())
                        <h2 class="mb-0 font-montserrat"><i class="bi bi-broadcast mr-2"></i> {{__('general.stream_live')}}</h2>
                        <p class="lead mt-0">{{__('general.create_live_stream_subtitle')}}</p>
                        <button class="btn btn-primary btn-sm w-small-100 btnCreateLive">
                          <i class="bi bi-plus-lg mr-1"></i> {{__('general.create_live_stream')}}
                        </button>

                        <div class="mt-3 d-block ">
                          <a href="{{ url('/') }}" class="text-white"><i class="bi bi-arrow-left"></i> {{ __('error.go_home') }}</a>
                        </div>

                      @elseif (! $live && $creator->id != auth()->id())

                        <h2 class="mb-0 font-montserrat"><i class="bi bi-broadcast mr-2"></i> {{__('general.welcome_live_room')}}</h2>
                        @if ($checkSubscription)
                          <p class="lead mt-0">{{__('general.info_offline_live')}}</p>

                          <div class="mt-3 d-block ">
                            <a href="{{ url('/') }}" class="text-white"><i class="bi bi-arrow-left"></i> {{ __('error.go_home') }}</a>
                          </div>

                        @else
                          <p class="lead mt-0">{{__('general.info_offline_live_non_subscribe')}}</p>
                          <a href="{{url($creator->username)}}" class="btn btn-primary btn-sm w-small-100">
                            <i class="feather icon-unlock mr-1"></i> {{__('general.subscribe_now')}}
                          </a>

                          <div class="mt-3 d-block ">
                            <a href="{{ url('/') }}" class="text-white"><i class="bi bi-arrow-left"></i> {{ __('error.go_home') }}</a>
                          </div>

                        @endif

                      @endif
                    </div>
                  </div><!-- flex-column -->
                @else

                  <div class="live-top-menu">
                  	<div class="w-100">
                      <img src="{{Helper::getFile(config('path.avatar').$creator->avatar)}}" class="rounded-circle avatar-live mr-2" width="40" height="40">
                  		<span class="font-weight-bold text-white text-shadow-sm d-lg-inline-block d-none">{{ $creator->username }}</span>
                      <span class="font-weight-bold text-white text-shadow-sm d-lg-none d-inline-block">{{ str_limit($creator->username, 7, '...') }}</span>
                  		<small class="font-weight-bold text-white text-shadow-sm" style="position: absolute; top: {{ $limitLiveStreaming ? '65px;' : '50px;' }} left: 67px;">
                        
                        @if (!$limitLiveStreaming)
                        {{ __('general.started') }} <span class="timeAgo" data="{{date('c', strtotime($live->created_at))}}"></span>
                        @endif
                        
                        @if ($creator->id == auth()->id())
                        <span class="w-100 @if ($amountTips === 0) display-none @else d-block @endif" id="earned">
                          <i class="bi-coin mr-1"></i> <span id="amountTip">{{ Helper::formatPrice($amountTips) }}</span>
                        </span>
                        @endif
                      </small>


                      @if ($live && ! $paymentRequiredToAccess && $limitLiveStreaming)
                        <small class="text-white text-shadow-sm limitLiveStreaming">
                          <i class="bi bi-clock mr-1"></i> <span>{{ $limitLiveStreaming }}</span> {{ __('general.minutes') }}
                        </small>
                      @endif


                      <div class="float-right">
                        <span class="live text-uppercase mr-2">{{ __('general.live') }}</span>
                        <span class="live-views text-uppercase mr-2">
                          <i class="bi bi-eye mr-2"></i> <span id="liveViews">{{ $live->onlineUsers->count() }}</span>
                        </span>

                        @if ($creator->id != auth()->id())
                          <button class="live-views text-uppercase mr-2" id="liveAudio">
                            <i class="fas fa-volume-mute"></i>
                          </button>
                        @endif

                        @if ($creator->id == auth()->id())
                          <span class="live-options text-shadow-sm mr-2" id="optionsLive" role="button" data-toggle="dropdown">
                            <i class="bi bi-gear"></i>
                          </span>

                          <div class="dropdown-menu dropdown-menu-right menu-options-live mb-1" aria-labelledby="optionsLive">
                            <div id="mute-audio">
                              <a class="dropdown-item"><i class="bi-mic-mute mr-1"></i> {{ __('general.mute_audio') }}</a>
                            </div>
                            <div id="mute-video">
                              <a class="dropdown-item"><i class="bi-camera-video-off mr-1"></i> {{ __('general.mute_video') }}</a>
                            </div>
                            <div class="dropdown-divider"></div>
                            <div id="camera-list"></div>
                            <div id="mic-list"></div>
                          </div>

                          <form method="POST" action="{{ url('end/live/stream', $live->id) }}" accept-charset="UTF-8" class="d-none" id="formEndLive">
                            @csrf
                            </form>
                        <span class="close-live text-shadow-sm" id="endLive" data-toggle="tooltip" data-placement="top" title="{{ __('general.end_live') }}">
                          <i class="bi bi-x-lg"></i>
                        </span>

                      @else
                      <span class="exit-live text-shadow-sm" id="menuToggle" role="button" data-toggle="dropdown">
                        <i class="bi-three-dots"></i>
                      </span>

                      <div class="dropdown-menu dropdown-menu-right menu-options-live mb-1" aria-labelledby="menuToggle">
                        @if ($live->type == 'normal')
                        <a href="javascript:void(0);" class="dropdown-item" data-toggle="modal" data-target="#reportLiveStream">
                          <i class="bi-flag mr-2"></i> {{ __('general.report_live_stream') }}
                        </a>
                        @endif

                        <a href="javascript:void(0);" class="dropdown-item" id="exitLive">
                          <i class="feather icon-log-out mr-2"></i> {{ __('general.exit_live_stream') }}
                        </a>
                      </div>

                        
                      @endif

                      </div>
                    </div>
                  </div>

                  <div id="full-screen-video"></div>
                

              
                @endif

              </div><!-- container-msg -->

              </div><!-- card -->
            </div><!-- end col-md-8 -->

          <!-- Chat Box -->
          <div class="col-md-3 h-100 p-0 border-right wrapper-msg-inbox wrapper-live-chat">

          <div class="card w-100 rounded-0 h-100 border-0">

            <div class="w-100 p-3 border-bottom titleChat">
            	<div class="w-100">
            		<span class="h5 align-top font-weight-bold">{{ __('general.chat') }}</span>
              </div>
            </div>

            <div class="content px-4 py-3 d-scrollbars container-msg chat-msg" id="contentDIV">

              <div class="div-flex"></div>

              @if ($live && ! $paymentRequiredToAccess)
              <ul class="list-unstyled mb-0" id="allComments">
                @include('includes.comments-live')
              </ul>
              @endif


            </div>

        <div class="card-footer bg-transparent position-relative @if (! $live) offline-live @endif">
            <!-- Alert -->
            <div class="alert alert-danger my-3 display-none" id="errorMsg">
             <ul class="list-unstyled m-0" id="showErrorMsg"></ul>
           </div><!-- Alert -->

            <form action="{{ url('comment/live') }}" method="post" accept-charset="UTF-8" id="formSendCommentLive" enctype="multipart/form-data">

              @if ($live)
                <input type="hidden" name="live_id" value="{{ $live->id }}">
              @endif

              @csrf

                  <div class="d-flex">

                    <div class="w-100 h-100 position-relative">
                      <div class="live-blocked rounded-pill blocked @if ($live && ! $paymentRequiredToAccess) display-none @endif"></div>
                      <input type="text" class="form-control border-0 emojiArea" id="commentLive" placeholder="{{ __('general.write_something') }}" name="comment" autocomplete="off" />
                    </div>

                    @if ($live && ! $paymentRequiredToAccess)
                      <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn icons-live e-none align-bottom buttons-live @if (auth()->user()->dark_mode == 'off') text-primary @else text-white @endif rounded-pill">
                          <i class="bi-emoji-smile f-size-25"></i>
                      </button>

                      <div class="dropdown-menu dropdown-menu-right dropdown-emoji custom-scrollbar" aria-labelledby="dropdownEmoji">
                        @include('includes.emojis')
                      </div>
                    @endif

                    @if ($creator->id != auth()->id())
                      @if ($live && ! $paymentRequiredToAccess)

                      @if ($settings->gifts)
                      <button type="button" data-toggle="modal" title="{{__('general.gifts')}}" data-target="#giftsForm" class="btn icons-live f-size-25 btn-tooltip e-none align-bottom buttons-live @if (auth()->user()->dark_mode == 'off') text-primary @else text-white @endif rounded-pill">
                        <i class="bi-gift"></i>
                      </button>

                      @else
                      <button type="button" class="btn icons-live btn-tooltip e-none align-bottom buttons-live @if (auth()->user()->dark_mode == 'off') text-primary @else text-white @endif rounded-pill" data-toggle="modal" data-target="#tipForm" title="{{__('general.tip')}}" data-cover="{{Helper::getFile(config('path.cover').$creator->cover)}}" data-avatar="{{Helper::getFile(config('path.avatar').$creator->avatar)}}" data-name="{{$creator->hide_name == 'yes' ? $creator->username : $creator->name}}" data-userid="{{$creator->id}}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" fill="currentColor" class="bi bi-coin" viewBox="0 0 16 16">
                          <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"></path>
                          <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"></path>
                          <path fill-rule="evenodd" d="M8 13.5a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"></path>
                        </svg>
                      </button>
                      @endif

                      @endif
                    @endif

                    @if ($live && ! $paymentRequiredToAccess)
                    <span class="btn icons-live e-none align-bottom buttons-live {{ $likeActive ? 'active' : null }} button-like-live @if (auth()->user()->dark_mode == 'off') text-primary @else text-white @endif rounded-pill">
                      <i class="bi bi-heart{{ $likeActive ? '-fill' : null }}"></i>
                    </span>

                    <div class="py-3">
                      <small id="counterLiveLikes">
                        @if ($live && $likes != 0)
                          {{ $likes }}
                        @endif
                      </small>
                    </div>
                    @endif

                  </div><!-- justify-content-between -->
                </form>
              </div>

            </div><!-- end card -->

          </div><!-- end col-md-3 -->

          </div><!-- end row -->
        </div><!-- end container -->

        <div class="live-bottom-menu">
                        <div class="w-100">
                            <div class="controls">
                                <button class="link-btn">link</button>
                                <button class="start-btn">Start</button>
                                <button class="size-btn">size</button>
                                
                            </div>
                            <div class="add-user">
                            <figure>
                                <img src="https://rose-trip.com/public/img/new_add_person.png" alt=""class="add-user">
                                </figure>
                            </div>

                        </div>
        </div>
<!-- <div class="box-videos"> -->
    <!-- <div class="heading-live">
        <h3>live in red
        </h3>
    </div>
        <div class="row">

      <div class="col-md-2">

       <div class="div-liv-1">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_1.jpeg" alt="" class="list-1">
            </figure>
            <p>Reha(live)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-2">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_2.jpeg" alt="" class="list-1">
            </figure>
            <p>chica (live)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="md-5">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_4.jpeg" alt="" class="list-1">
            </figure>
            <p>zeica(live)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-3">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_1.jpeg" alt="" class="list-1">
            </figure>
            <p>Reha(live Now)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-4">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_2.jpeg" alt="" class="list-1">
            </figure>
            <p>chica (live)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-5">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_2.jpeg" alt="" class="list-1">
            </figure>
            <p>chica (live)</p>
          </div>
        </div>
      </div>
      </div>
      <div class="box-videos-2">
      <div class="col-md-2">
       <div class="div-liv-7">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_4.jpeg" alt="" class="list-1">
            </figure>
            <p>zeica(live)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-8">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_1.jpeg" alt="" class="list-1">
            </figure>
            <p>Reha(live Now)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-9">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_2.jpeg" alt="" class="list-1">
            </figure>
            <p>chica (live)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-10">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_4.jpeg" alt="" class="list-1">
            </figure>
            <p>zeica(live)</p>
          </div>
        </div>
      </div><div class="col-md-2">
       <div class="div-liv-11">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_1.jpeg" alt="" class="list-1">
            </figure>
            <p>Reha(live Now)</p>
          </div>
        </div>
      </div>
      <div class="col-md-2">
       <div class="div-liv-12">
          <div class="red">
            <a href="#">live</a>
          </div>
          <div class="picture">
            <figure>
            <img src="https://rose-trip.com/public/img/list_2.jpeg" alt="" class="list-1">
            </figure>
            <p>chica (live)</p>
          </div>
        </div>
      </div>
      </div>

      </div>
    </div>       -->

</section>
<section class="live-user-now">
<div class="new container">
  <div class="new_heading">
  <label>{{__('Now Hot Live')}}</label>
  </div>
    <div class="row">
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_1.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_2.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_3.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_4.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_2.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_4.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_1.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_4.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_2.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_3.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_1.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="new_box" style="background-image: url('/public/img/list_4.jpeg');">
                <div class="new_tag">Live</div>
                <div class="new_profile">
                    <img src="https://rose-trip.s3.eu-north-1.amazonaws.com/uploads/avatar/admin-11718053331n8sbywnvka.png" alt="Admin">
                    <div class="name">Admin</div>
                </div>
            </div>
        </div>
    </div>
    <!-- Add more rows as needed -->
</div>
</section>


@if ($live && $paymentRequiredToAccess)
  @include('includes.modal-pay-live')
@endif

@if ($creator->id != auth()->id() && $live && ! $paymentRequiredToAccess)
<div class="modal fade modalReport" id="reportLiveStream" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-danger modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h6 class="modal-title font-weight-light" id="modal-title-default"><i class="fas fa-flag mr-1"></i> {{__('general.report_live_stream')}}</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <i class="fa fa-times"></i>
        </button>
      </div>
 <!-- form start -->
 <form method="POST" action="{{url('report/live', $creator->id)}}" enctype="multipart/form-data">
    <div class="modal-body">
      @csrf
      <!-- Start Form Group -->
      <div class="form-group">
        <label>{{__('admin.please_reason')}}</label>
          <select name="reason" class="form-control custom-select">
           <option value="spoofing">{{__('admin.spoofing')}}</option>
              <option value="copyright">{{__('admin.copyright')}}</option>
              <option value="privacy_issue">{{__('admin.privacy_issue')}}</option>
              <option value="violent_sexual">{{__('admin.violent_sexual_content')}}</option>
              <option value="spam">{{__('general.spam')}}</option>
              <option value="fraud">{{__('general.fraud')}}</option>
            </select>

            <textarea name="message" rows="" cols="40" maxlength="200" placeholder="{{__('general.message')}}*" class="form-control mt-2 textareaAutoSize"></textarea>
            
            </div><!-- /.form-group-->
        </div><!-- Modal body -->

       <div class="text-center pb-4">         
         <button type="submit" class="btn btn-xs btn-white sendReport ml-auto"><i></i> {{__('general.report_live_stream')}}</button>
         <div class="w-100 mt-2">
          <button type="button" class="btn border text-white" data-dismiss="modal">{{__('admin.cancel')}}</button>
        </div>
       </div>

       </form>
      </div><!-- Modal content -->
    </div><!-- Modal dialog -->
  </div>
@endif

@endsection

@section('javascript')

  @if ($live && $paymentRequiredToAccess)
    <script>
    // Payment Required
  		$('#payLiveForm').modal({
  				 backdrop: 'static',
  				 keyboard: false,
  				 show: true
  		 });

       //<---------------- Pay Live ----------->>>>
 			 $(document).on('click','#payLiveBtn',function(s) {
 				 s.preventDefault();
 				 var element = $(this);
 				 element.attr({'disabled' : 'true'});
 				 element.find('i').addClass('spinner-border spinner-border-sm align-middle mr-1');

 				 (function(){
 						$('#formPayLive').ajaxForm({
 						dataType : 'json',
 						success:  function(result) {

 							if (result.success) {
 								window.location.reload();
 							} else {

 								if (result.errors) {

 									var error = '';
 									var $key = '';

 									for ($key in result.errors) {
 										error += '<li><i class="far fa-times-circle"></i> ' + result.errors[$key] + '</li>';
 									}

 									$('#showErrorsPayLive').html(error);
 									$('#errorPayLive').show();
 									element.removeAttr('disabled');
 									element.find('i').removeClass('spinner-border spinner-border-sm align-middle mr-1');
 								}
 							}

 						 },
 						 error: function(responseText, statusText, xhr, $form) {
 								 // error
 								 element.removeAttr('disabled');
 								 element.find('i').removeClass('spinner-border spinner-border-sm align-middle mr-1');
 								 swal({
 										 type: 'error',
 										 title: error_oops,
 										 text: error_occurred+' ('+xhr+')',
 									 });
 						 }
 					 }).submit();
 				 })(); //<--- FUNCTION %
 			 });//<<<-------- * END FUNCTION CLICK * ---->>>>
    </script>
  @endif

  @if ($live && !$paymentRequiredToAccess)
    <script src="{{ asset('public/js/live.js') }}?v={{$settings->version}}"></script>
    <script src="{{ asset('public/js/agora/agora-broadcast-client-v4.js') }}?v={{$settings->version}}"></script>

    @if ($creator->id == auth()->id() || !$paymentRequiredToAccess)
      <script>
      // Start Live
      $(document).ready(async function() {
        await joinChannel();
      });
    	</script>
      @endif

  @endif
@endsection
