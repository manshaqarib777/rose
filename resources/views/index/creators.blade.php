@extends('layouts.app')

@section('title')
    {{ $title }} -
@endsection

@section('content')
    <section class="section px-3">
        <div class="container-fluid">
            {{-- <div class="row justify-content-center text-center mb-sm">
                <div class="col-lg-12 py-5">
                    <h2 class="mb-0 text-break">{{ $title }}</h2>
                    <p class="lead text-muted mt-0">{{ __('users.the_best_creators_is_here') }}
                        @guest
                            @if ($settings->registration_active == '1')
                                <a href="{{ url('signup') }}" class="link-border">{{ __('general.join_now') }}</a>
                            @endif
                        @endguest

                        @auth
                            @if (!$settings->disable_explore_section)
                                <a href="{{ url('explore') }}" class="link-border">{{ __('general.explore_posts') }}</a>
                            @endif
                        @endauth
                    </p>
                </div>
            </div> --}}

            <div class="d-flex  flex-column flex-md-row flex-wrap" style="gap: 10px;">
                <div style="flex-basis: 20%;">
                    @if (!$settings->disable_creators_section)
                        @include('includes.menu-filters-creators')
                    @endif

                    @include('includes.listing-categories')
                </div>

                <div class="" style="flex-basis: 75%; flex-grow: 1;">
                    @if ($users->count() != 0)
                        <div class="mb-4">
                            <div class="" id="containerWrapCreators" style="display: grid; gap: 8px; grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));">

                                @foreach ($users as $response)
                                    <div class="">
                                        @include('includes.listing-creators')
                                    </div><!-- end col-md-4 -->
                                @endforeach

                                @include('includes.paginator-creators')
                            </div><!-- row -->
                        </div><!-- col-md-9 -->
                    @else
                        <div class="flex-fill">
                            <div class="my-5 text-center no-updates">
                                <span class="btn-block mb-3">
                                    <i class="fa fa-user-slash ico-no-result"></i>
                                </span>
                                <h4 class="font-weight-light">{{ __('general.no_results_found') }}</h4>
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
