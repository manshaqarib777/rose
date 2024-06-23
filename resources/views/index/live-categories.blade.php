@extends('layouts.app')

@section('title')
    {{ $title }} -
@endsection

@section('description_custom')
    {{ $description ? $description : trans('seo.description') }}
@endsection
@section('keywords_custom')
    {{ $keywords ? $keywords . ',' : null }}
@endsection

@section('content')
    <section class="section ">
        <div class="container-fluid">
            <div class="d-flex  flex-column flex-md-row flex-wrap" style="gap: 10px;">
                <div style="flex-basis: 20%;">
                    @include('includes.menu-home', $s_childs)
                </div><!-- end col-md-3 -->

                <div class="" style="flex-basis: 75%; flex-grow: 1;">
                    <ul class="d-flex flex-wrap list-unstyled">
                        <li class="nav-item">
                            <a href="{{ url('category', $parent->slug) }}" class="d-block nav-link text-capitalize"
                                @if ($showAll && in_array($parent->slug,$allCategories)) style="border-bottom: 1px solid var(--red);" @endif>{{ trans('All') }}</a>
                        </li>
                        @foreach ($childs as $child)
                            <li class="nav-item">
                                <a href="{{ url('category', $child->slug) }}" class="d-block nav-link text-capitalize"
                                    @if (in_array($child->slug,$allCategories)) style="border-bottom: 1px solid var(--red);" @endif>{{ $child->name }}</a>
                            </li>
                        @endforeach
                    </ul>
                    @foreach ($data as $key => $listings)

                            <div class="mb-4">
                                <h5 class="mb-3 font-montserrat">
                                    <img src="{{ url('public/img/live.png') }}" class="mr-2 rounded" width="25" />
                                    {{ $key }}
                                </h5>

                                <div class=""
                                    style="display: grid; gap: 8px; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));">

                                    @foreach ($listings["users"] as $response)
                                        <div class="" style="overflow: hidden;">
                                            @include('includes.listing-creators-live')
                                        </div><!-- end col-md-4 -->
                                    @endforeach


                                </div><!-- row -->
                                @if ($listings["users"]->hasPages())
                                    <div class="w-100 d-block">
                                        {{ $listings["users"]->onEachSide(0)->appends([
                                                'q' => request('q'),
                                                'gender' => request('gender'),
                                                'min_age' => request('min_age'),
                                                'max_age' => request('max_age'),
                                            ])->links() }}
                                    </div>
                                @endif
                            </div><!-- col-md-9 -->




                            <div class="mb-4">

                                <div class=""
                                    style="display: grid; gap: 8px; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));">

                                    @foreach ($listings["streams"] as $offlineStream)
                                        <div class="" style="overflow: hidden;">
                                            <a href="{{route('videoDetail', [$offlineStream->user->username,$offlineStream->id])}}"  class="w-100 cursor-pointer">
                                                <div class="box-card w-100 p-2 h-100 rounded cursor-pointer" onclick='window.location.href="{{route("videoDetail", [$offlineStream->user->username,$offlineStream->id])}}"'
                                                    style="background: @if($offlineStream->thumbnail != null) url('{{ Helper::getFile(config('path.livestream') . $offlineStream->thumbnail) }}') @endif #303030 center center; background-size: cover;">
                                                    @if($offlineStream->vr_check)
                                                        <div class="d-flex align-items-center justify-content-end" style="gap: 8px;">
                                                            <a href="{{route('videoDetail', [$offlineStream->user->username,$offlineStream->id])}}" class="badge badge-sm bg-info">VR</a>
                                                        </div>
                                                    @endif

                                                    <p class="mb-5 mt-5 text-center fs-7">
                                                        {{ Str::limit($offlineStream->name, 100, '...') }}
                                                    </p>

                                                    <div class="d-flex align-items-end justify-content-between">
                                                        <div class="d-flex align-items-end" style="gap: 5px;">
                                                            <img src="{{ Helper::getFile(config('path.avatar') . $offlineStream->user->avatar) }}" width="40"
                                                                height="30" alt="{{ $offlineStream->user->name }}" class="img-user-small" />

                                                            <p class="mb-0 text-white fs-7">
                                                                {{ $offlineStream->user->hide_name == 'yes' ? Str::limit($offlineStream->user->username, 6, '...') : Str::limit($offlineStream->user->name, 6, '...') }}
                                                            </p>
                                                        </div>
                                                    </div>

                                                </div>

                                            </a>

                                        </div>
                                    @endforeach

                                </div><!-- row -->
                            </div><!-- col-md-9 -->
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endsection

@section('javascript')
    <script src="{{ url('public/js/paginator-creators.js') }}?v={{ $settings->version }}"></script>
@endsection
