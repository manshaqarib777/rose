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
            {{-- <div class="row justify-content-center text-center mb-sm">
                <div class="col-lg-12 py-5">
                    <h2 class="mb-0 font-montserrat">
                        <img src="{{ url('public/img-category', $image) }}" class="mr-2 rounded" width="30" />
                        {{ $title }}
                    </h2>
                    <p class="lead text-muted mt-0">{{ trans_choice('users.creators_in_this_category', 2) }}</p>
                </div>
            </div> --}}

            <div class="d-flex  flex-column flex-md-row flex-wrap" style="gap: 10px;">
                <div style="flex-basis: 20%;">

                    @if (!$settings->disable_creators_section)
                        @include('includes.menu-filters-creators')
                    @endif

                    @include('includes.listing-categories')

                </div><!-- end col-md-3 -->

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
