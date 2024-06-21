$(document).ready(function() {
    var URL_BASE = "{{ url('/') }}";
    // enable fileuploader plugin
    $('input[name="livestream_image"]').fileuploader({
        limit: 1,
        maxSize: 50,

        changeInput: '<div class="fileuploader-input">' +
            '<div class="fileuploader-input-inner">' +
            '<div class="fileuploader-icon-main"></div>' +
            '<h3 class="fileuploader-input-caption"><span>${captions.feedback}</span></h3>' +
            '<p>${captions.or}</p>' +
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
            beforeSend: function (item, listEl, parentEl, newInputEl, inputEl) {
                // here you can create upload headers
                item.upload.headers = {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                        "content"
                    ),
                };
                return true;
            },
            onSuccess: function (result, item) {
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

                setTimeout(function () {
                    item.html.find(".progress-holder").hide();
                    item.renderThumbnail();

                    item.html
                        .find(
                            ".fileuploader-action-popup, .fileuploader-item-image"
                        )
                        .show();
                }, 400);
            },
            onError: function (item) {
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
            feedback: 'Drag and drop image file to upload ( select or upload a picture that represents your stream )',
            feedback2: 'Drag and drop files here',
            drop: 'Drag and drop files here',
            or: 'or',
            button: 'Select Image',
        }),
    });

});