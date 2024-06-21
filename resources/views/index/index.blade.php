@extends('layouts.app')

@section('title')
    {{ trans('general.creators_live') }} -
@endsection

@section('content')
    <section class="section px-3">
        <div class="container-fluid">
            <div class="d-flex flex-column flex-md-row flex-wrap" style="gap: 10px;">
                <div style="flex-basis: 20%;">
                    @include('includes.menu-home')
                    {{-- 
                    @if (!$settings->disable_creators_section)
                        @include('includes.menu-filters-creators')
                    @endif --}}

                    {{-- @include('includes.listing-categories') --}}
                </div>

                <div class="" style="flex-basis: 75%; flex-grow: 1;">
                    @if ($users->total() != 0)
                        <div class="mb-4">
                            <h5 class="mb-3 font-montserrat">
                                <img src="{{ url('public/img/live.png') }}" class="mr-2 rounded" width="25" />
                                {{ __('general.Latest Live') }}
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

                        <div class="mb-4">
                            <h5 class="mb-3 font-montserrat">
                                <img src="{{ url('public/img/live.png') }}" class="mr-2 rounded" width="25" />
                                {{ __('general.featured-live') }}
                            </h5>

                            <div class=""
                                style="display: grid; gap: 8px; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));">

                                @foreach ($featureds as $response)
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

                        @foreach ($c_streams as $title => $items)
                        <div class="mb-4">
                            <h5 class="mb-3 font-montserrat">
                                <img src="{{ url('public/img/live.png') }}" class="mr-2 rounded" width="25" />
                                {{ $title }}
                            </h5>

                            <div class=""
                                style="display: grid; gap: 8px; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));">

                                @foreach ($items as $response)
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
                        @endforeach
                        


                    @else
                        <div class="flex-fill">
                            <div class="my-5 text-center no-updates">
                                <span class="btn-block mb-3">
                                    <i class="bi bi-broadcast ico-no-result"></i>
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
