<!-- Start Modal liveStreamingForm -->
<style type="text/css">
    .fileuploader {
        display: block;
        padding: 0;
    }

    .fileuploader-items-list {
        margin: 10px 0 0 0;
    }

    .fileuploader-theme-dragdrop .fileuploader-input {
        background: @if (auth()->check() && auth()->user()->dark_mode == 'off')
            #fff
        @else
            #222
        @endif
        ;
    }
</style>

<div class="modal fade" id="postFormModal" tabindex="-1" role="dialog" aria-labelledby="live-stream-modal-form"
    aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h6><i class="bi bi-camera-video mr-1"></i>{{ trans('general.upload_media') }}</h6>
            </div>

            <div class="modal-body p-0">
                <div class="card bg-white shadow border-0">

                    <div class="card-body px-lg-5 py-lg-5 position-relative">


                        <form method="post" action="{{ url('create/offline') }}" id="formSendOffline"
                            enctype="multipart/form-data">

                            @csrf

                            <label>{{ __('Category') }}</label>
                            <div class="input-group mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="far fa-lightbulb"></i></span>
                                </div>
                                <select name="category_id" class="form-control custom-select">
                                    @foreach (Categories::where('mode', 'on')->orderBy('name')->get() as $category)
                                        <option value="{{ $category->id }}">
                                            {{ Lang::has('categories.' . $category->slug) ? __('categories.' . $category->slug) : $category->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <label>{{ __('Classification') }}</label>
                            <div class="input-group mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-th-large"></i></span>
                                </div>
                                <select name="classification" id="Classification" class="form-control custom-select">
                                    <option value="vod">{{ trans('VOD') }}</option>
                                    <option value="r-vod">{{ trans('R-VOD') }}</option>
                                    <option value="gif">{{ trans('GIF') }}</option>
                                    <option value="audio">{{ trans('AUDIO') }}</option>
                                    <option value="book">{{ trans('BOOK') }}</option>
                                </select>
                            </div>

                            <div id='showVRCheck' class="custom-control custom-control-alternative custom-checkbox mb-4">
                                <input class="custom-control-input" id="customCheckRegister" type="checkbox" name="vr_check">
                                  <label class="custom-control-label" for="customCheckRegister">
                                    <span>
                                        {{ __('VR Confirmation') }}
                                    </span>
                                </label>
                            </div>


                            <div class="form-group">
                                <label>{{ __('Thumbnail') }}</label>
                                <input type="file" name="thumbnail" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label>{{ __('Content') }}</label>
                                <input type="file" name="content"
                                    accept="image/*,video/mp4,video/x-m4v,video/quicktime,audio/mp3">
                            </div>
                            <div class="form-group" id='showScript' style="display: none;">
                                <label>{{ __('Script') }}</label>
                                <input type="file" name="script"
                                    accept="image/*,video/mp4,video/x-m4v,video/quicktime,audio/mp3">
                            </div>

                            <div class="alert alert-danger display-none mb-0 mt-3" id="errorOffline">
                                <ul class="list-unstyled m-0" id="showErrorsOffline"></ul>
                            </div>

                            <div class="text-right">
                                <button type="button" class="btn e-none mt-4"
                                    data-dismiss="modal">{{ trans('admin.cancel') }}</button>
                                <button type="submit" id="OfflineBtn" class="btn btn-primary mt-4 OfflineBtn"><i></i>
                                    {{ trans('users.create') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Modal liveStreamingForm -->

@section('script')
    <script type="text/javascript">
        $(document).ready(function() {
            		// Create Live Stream
		$('#OfflineBtn').on('click', function(e) {

            e.preventDefault();
            var $element = $(this);
            $element.attr({'disabled' : 'true'});

            $element.find('i').addClass('spinner-border spinner-border-sm align-middle mr-1');

            (function() {
                $("#formSendOffline").ajaxForm({
                dataType : 'json',
                success:  function(response) {
                    if (response.success) {
                        window.location.href = response.url;

                    } else {

                        var error = '';
                        var $key  = '';

                        for ($key in response.errors) {
                            error += '<li><i class="fa fa-times-circle"></i> ' + response.errors[$key] + '</li>';
                        }

                        $('#errorOffline').fadeIn(500);
                        $('#showErrorsOffline').html(error);

                        $element.removeAttr('disabled');
                        $element.find('i').removeClass('spinner-border spinner-border-sm align-middle mr-1');
                    }
                },
                error: function(responseText, statusText, xhr, $form) {
                            // error
                            swal({
                                    type: 'error',
                                    title: 'Oops...',
                                    text: ''+error_occurred+' ('+xhr+')',
                                });
                                $element.removeAttr('disabled');
                                $element.find('i').removeClass('spinner-border spinner-border-sm align-middle mr-1');
                    }
                }).submit();
            })(); //<--- FUNCTION %
            });// End Create Live
            $("#Classification").change(event, function() {
                if ($(this).val() == "r-vod" || $(this).val() == "gif" || $(this).val() == "audio") {
                    $("#showScript").show();
                } else {
                    $("#showScript").hide();
                }
                if ($(this).val() == "r-vod" || $(this).val() == "vod") {
                    $("#showVRCheck").show();
                } else {
                    $("#showVRCheck").hide();
                }
            });

            var URL_BASE = "{{ url('/') }}";
            // enable fileuploader plugin
            $('input[name="thumbnail"]').fileuploader({
                limit: 1,
                maxSize: 50,

                changeInput: '<div class="fileuploader-input">' +
                    '<div class="fileuploader-input-inner">' +
                    '<div class="fileuploader-icon-main"></div>' +
                    '<h3 class="fileuploader-input-caption"><span>${captions.feedback}</span></h3>' +
                    '<button type="button" class="fileuploader-input-button"><span>${captions.button}</span></button>' +
                    '</div>' +
                    '</div>',
                theme: 'dragdrop',
                upload: {
                    url: '/upload/media/livestream/file',
                    data: null,
                    type: 'POST',
                    enctype: 'multipart/form-data',
                    start: true,
                    synchron: true,
                    beforeSend: function(item, listEl, parentEl, newInputEl, inputEl) {
                        // here you can create upload headers
                        item.upload.headers = {
                            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                                "content"
                            ),
                        };
                        return true;
                    },
                    onSuccess: function(result, item) {
                        var data = {};

                        if (result && result.files) {
                            data = result;
                        } else {
                            data.hasWarnings = true;
                        }

                        // if success
                        if (data.isSuccess && data.files.length) {
                            item.name = data.files[0].name;
                            item.html
                                .find(".content-holder > h5")
                                .text(item.name)
                                .attr("title", item.name);
                        }

                        // if warnings
                        if (data.hasWarnings) {
                            var error = "";

                            for (var warning in data.warnings) {
                                error += data.warnings[warning];
                            }

                            swal({
                                title: error_oops,
                                text: error,
                                type: "error",
                                confirmButtonText: ok,
                            });

                            item.remove();

                            // item.html.removeClass('upload-successful').addClass('upload-failed');
                            return this.onError ? this.onError(item) : null;
                        }

                        item.html
                            .find(".fileuploader-action-remove")
                            .addClass("fileuploader-action-success");

                        setTimeout(function() {
                            item.html.find(".progress-holder").hide();
                            item.renderThumbnail();

                            item.html
                                .find(
                                    ".fileuploader-action-popup, .fileuploader-item-image"
                                )
                                .show();
                        }, 400);
                    },
                    onError: function(item) {
                        item.html
                            .find(
                                ".progress-holder, .fileuploader-action-popup, .fileuploader-item-image"
                            )
                            .hide();
                    },
                    onProgress: function(data, item) {
                        var progressBar = item.html.find('.progress-bar2');

                        if (progressBar.length > 0) {
                            progressBar.show();
                            progressBar.find('span').html(data.percentage + "%");
                            progressBar.find('.fileuploader-progressbar .bar').width(data.percentage +
                                "%");
                        }
                    },
                    onComplete: null,
                },
                onRemove: function(item) {
                    $.post('/livestream/delete/media', {
                        file: item.name,
                        _token: $('meta[name="csrf-token"]').attr('content')
                    });
                },
                captions: $.extend(true, {}, $.fn.fileuploader.languages['en'], {
                    feedback: '',
                    feedback2: 'Drag and drop files here',
                    drop: 'Drag and drop files here',
                    or: '',
                    button: 'Select Thumbnail',
                }),
            });
            $('input[name="content"]').fileuploader({
                limit: 1,
                maxSize: 50,

                changeInput: '<div class="fileuploader-input">' +
                    '<div class="fileuploader-input-inner">' +
                    '<div class="fileuploader-icon-main"></div>' +
                    '<h3 class="fileuploader-input-caption"><span>${captions.feedback}</span></h3>' +
                    '<button type="button" class="fileuploader-input-button"><span>${captions.button}</span></button>' +
                    '</div>' +
                    '</div>',
                theme: 'dragdrop',
                upload: {
                    url: '/upload/media/livestream/file',
                    data: null,
                    type: 'POST',
                    enctype: 'multipart/form-data',
                    start: true,
                    synchron: true,
                    beforeSend: function(item, listEl, parentEl, newInputEl, inputEl) {
                        // here you can create upload headers
                        item.upload.headers = {
                            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                                "content"
                            ),
                        };
                        return true;
                    },
                    onSuccess: function(result, item) {
                        var data = {};

                        if (result && result.files) {
                            data = result;
                        } else {
                            data.hasWarnings = true;
                        }

                        // if success
                        if (data.isSuccess && data.files.length) {
                            item.name = data.files[0].name;
                            item.html
                                .find(".content-holder > h5")
                                .text(item.name)
                                .attr("title", item.name);
                        }

                        // if warnings
                        if (data.hasWarnings) {
                            var error = "";

                            for (var warning in data.warnings) {
                                error += data.warnings[warning];
                            }

                            swal({
                                title: error_oops,
                                text: error,
                                type: "error",
                                confirmButtonText: ok,
                            });

                            item.remove();

                            // item.html.removeClass('upload-successful').addClass('upload-failed');
                            return this.onError ? this.onError(item) : null;
                        }

                        item.html
                            .find(".fileuploader-action-remove")
                            .addClass("fileuploader-action-success");

                        setTimeout(function() {
                            item.html.find(".progress-holder").hide();
                            item.renderThumbnail();

                            item.html
                                .find(
                                    ".fileuploader-action-popup, .fileuploader-item-image"
                                )
                                .show();
                        }, 400);
                    },
                    onError: function(item) {
                        item.html
                            .find(
                                ".progress-holder, .fileuploader-action-popup, .fileuploader-item-image"
                            )
                            .hide();
                    },
                    onProgress: function(data, item) {
                        var progressBar = item.html.find('.progress-bar2');

                        if (progressBar.length > 0) {
                            progressBar.show();
                            progressBar.find('span').html(data.percentage + "%");
                            progressBar.find('.fileuploader-progressbar .bar').width(data.percentage +
                                "%");
                        }
                    },
                    onComplete: null,
                },
                onRemove: function(item) {
                    $.post('/livestream/delete/media', {
                        file: item.name,
                        _token: $('meta[name="csrf-token"]').attr('content')
                    });
                },
                captions: $.extend(true, {}, $.fn.fileuploader.languages['en'], {
                    feedback: '',
                    feedback2: 'Drag and drop files here',
                    drop: 'Drag and drop files here',
                    or: '',
                    button: 'Select Content',
                }),
            });
            $('input[name="script"]').fileuploader({
                limit: 1,
                maxSize: 50,

                changeInput: '<div class="fileuploader-input">' +
                    '<div class="fileuploader-input-inner">' +
                    '<div class="fileuploader-icon-main"></div>' +
                    '<h3 class="fileuploader-input-caption"><span>${captions.feedback}</span></h3>' +
                    '<button type="button" class="fileuploader-input-button"><span>${captions.button}</span></button>' +
                    '</div>' +
                    '</div>',
                theme: 'dragdrop',
                upload: {
                    url: '/upload/media/livestream/file',
                    data: null,
                    type: 'POST',
                    enctype: 'multipart/form-data',
                    start: true,
                    synchron: true,
                    beforeSend: function(item, listEl, parentEl, newInputEl, inputEl) {
                        // here you can create upload headers
                        item.upload.headers = {
                            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                                "content"
                            ),
                        };
                        return true;
                    },
                    onSuccess: function(result, item) {
                        var data = {};

                        if (result && result.files) {
                            data = result;
                        } else {
                            data.hasWarnings = true;
                        }

                        // if success
                        if (data.isSuccess && data.files.length) {
                            item.name = data.files[0].name;
                            item.html
                                .find(".content-holder > h5")
                                .text(item.name)
                                .attr("title", item.name);
                        }

                        // if warnings
                        if (data.hasWarnings) {
                            var error = "";

                            for (var warning in data.warnings) {
                                error += data.warnings[warning];
                            }

                            swal({
                                title: error_oops,
                                text: error,
                                type: "error",
                                confirmButtonText: ok,
                            });

                            item.remove();

                            // item.html.removeClass('upload-successful').addClass('upload-failed');
                            return this.onError ? this.onError(item) : null;
                        }

                        item.html
                            .find(".fileuploader-action-remove")
                            .addClass("fileuploader-action-success");

                        setTimeout(function() {
                            item.html.find(".progress-holder").hide();
                            item.renderThumbnail();

                            item.html
                                .find(
                                    ".fileuploader-action-popup, .fileuploader-item-image"
                                )
                                .show();
                        }, 400);
                    },
                    onError: function(item) {
                        item.html
                            .find(
                                ".progress-holder, .fileuploader-action-popup, .fileuploader-item-image"
                            )
                            .hide();
                    },
                    onProgress: function(data, item) {
                        var progressBar = item.html.find('.progress-bar2');

                        if (progressBar.length > 0) {
                            progressBar.show();
                            progressBar.find('span').html(data.percentage + "%");
                            progressBar.find('.fileuploader-progressbar .bar').width(data.percentage +
                                "%");
                        }
                    },
                    onComplete: null,
                },
                onRemove: function(item) {
                    $.post('/livestream/delete/media', {
                        file: item.name,
                        _token: $('meta[name="csrf-token"]').attr('content')
                    });
                },
                captions: $.extend(true, {}, $.fn.fileuploader.languages['en'], {
                    feedback: '',
                    feedback2: 'Drag and drop files here',
                    drop: 'Drag and drop files here',
                    or: '',
                    button: 'Select Script',
                }),
            });

        });
    </script>
@endsection
