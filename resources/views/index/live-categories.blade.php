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
                        @foreach ($childs as $child)
                            <li class="nav-item">
                                <a href="{{ url('category', $child->slug) }}" class="d-block nav-link text-capitalize" @if (Request::path() == "category/$child->slug") style="border-bottom: 1px solid var(--red);" @endif >{{ $child->name }}</a>
                            </li>
                        @endforeach
                    </ul>

                    @if ($users->count() != 0)
                        <div class="mb-4">
                            <h5 class="mb-3 font-montserrat">
                                <img src="{{ url('public/img/live.png') }}" class="mr-2 rounded" width="25" />
                                {{ $title }}
                            </h5>

                            <div class=""
                                style="display: grid; gap: 8px; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));">

                                @foreach ($users as $response)
                                    <div class="" style="overflow: hidden;">
                                        @include('includes.listing-creators-live')
                                    </div><!-- end col-md-4 -->
                                @endforeach


                            </div><!-- row -->
							                                @if ($users->hasPages())
                                    <div class="w-100 d-block">
                                        {{ $users->onEachSide(0)->appends([
                                                'q' => request('q'),
                                                'gender' => request('gender'),
                                                'min_age' => request('min_age'),
                                                'max_age' => request('max_age'),
                                            ])->links() }}
                                    </div>
                                @endif
                        </div><!-- col-md-9 -->
                    @else
                        <div class="">
                            <div class="my-5 text-center no-updates">
                                <span class="btn-block mb-3">
                                    <i class="fa fa-user-slash ico-no-result"></i>
                                </span>
                                <h4 class="font-weight-light">{{ trans('general.not_found_creators_category') }}</h4>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection

@section('javascript')
    <script src="{{ url('public/js/paginator-creators.js') }}?v={{ $settings->version }}"></script>
@endsection
