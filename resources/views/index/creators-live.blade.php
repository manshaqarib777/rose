@extends('layouts.app')

@section('title')
    {{ trans('general.creators_live') }} -
@endsection

@section('content')
    <section class="section px-3">
        <div class="container-fluid">
            <div class="d-flex  flex-column flex-md-row flex-wrap" style="gap: 10px;">
                <div style="flex-basis: 20%;">
                    @include('includes.menu-home')
                </div><!-- end col-md-3 -->

                <div class="" style="flex-basis: 75%; flex-grow: 1;">
                    <ul class="d-flex flex-wrap list-unstyled">
                        @foreach ($w_categories as $categ => $w_category)
                            @foreach ($w_category as $category)
                                <li class="nav-item">
                                    <a href="{{ url('category', $category->slug) }}" class="d-block nav-link text-capitalize" @if (Request::path() == "category/$category->slug") style="border-bottom: 1px solid var(--red);" @endif >{{ $category->name }}</a>
                                </li>
                            @endforeach
                        @endforeach
                    </ul>

                    @if ($users->count() != 0)
                        <div class="mb-4">
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
                                <h4 class="font-weight-light">{{ trans('general.no_live_streams') }}</h4>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection
