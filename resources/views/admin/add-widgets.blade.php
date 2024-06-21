@extends('admin.layout')

@section('content')
    <h5 class="mb-4 fw-light">
        <a class="text-reset" href="{{ url('panel/admin') }}">{{ __('admin.dashboard') }}</a>
        <i class="bi-chevron-right me-1 fs-6"></i>
        <a class="text-reset" href="{{ url('panel/admin/widgets') }}">{{ __('general.widgets') }}</a>
        <i class="bi-chevron-right me-1 fs-6"></i>
        <span class="text-muted">{{ __('general.add_new') }}</span>
    </h5>

    <div class="content">
        <div class="row">

            <div class="col-lg-12">

                @include('errors.errors-forms')

                <div class="card shadow-custom border-0">
                    <div class="card-body p-lg-5">

                        <form method="post" action="{{ url('panel/admin/widgets/add') }}" enctype="multipart/form-data">
                            @csrf

                            

                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label text-lg-end">{{ trans('admin.name') }}</label>
                                <div class="col-sm-10">
                                    <input value="{{ old('title') }}" name="title" type="text" class="form-control">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label text-lg-end">{{ trans('admin.type') }}</label>
                                <div class="col-sm-10">
                                    <select name="type" class="form-control">
                                        <option value="home" selected>{{ trans('admin.home') }}</option>
                                        <option value="top">{{ trans('admin.top') }}</option>
                                        <option value="menu">{{ trans('admin.menu') }}</option>
                                        <option value="header">{{ trans('admin.header') }}</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label text-lg-end">{{ trans('admin.content') }}</label>
                                <div class="col-sm-10">
                                    {!! select_dropdown('Categories', null, null, 'content_id') !!}
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label text-lg-end">{{ trans('admin.serial_no') }}</label>
                                <div class="col-sm-10">
                                    <input value="{{ old('serial_no') }}" name="serial_no" type="text" class="form-control">
                                </div>
                            </div>


                            <div class="row mb-3">
                                <div class="col-sm-10 offset-sm-2">
                                    <button type="submit" class="btn btn-dark mt-3 px-5">{{ __('admin.save') }}</button>
                                </div>
                            </div>

                        </form>

                    </div><!-- card-body -->
                </div><!-- card  -->
            </div><!-- col-lg-12 -->

        </div><!-- end row -->
    </div><!-- end content -->
@endsection

@section('javascript')
    <script type="text/javascript"></script>
@endsection
