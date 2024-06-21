@include('includes.advertising')

@php
    $mediaImageVideo = array();
    if($stream->content)
    $mediaImageVideo[] = $stream->content;
    if($stream->script)
    $mediaImageVideo[] = $stream->script;
@endphp
<div class="card mb-3 card-updates views rounded-large shadow-large card-border-0"
    data="{{ $stream->id }}">
    <div class="card-body">

        <div class="media">

            <div class="media-body">
                <h5 class="mb-0 font-montserrat">
                    <a href="{{ url($stream->user->username) }}">
                        {{ $stream->user->hide_name == 'yes' ? $stream->user->username : $stream->user->name }}
                    </a>

                    @if ($stream->user->verified_id == 'yes')
                        <small class="verified" title="{{ __('general.verified_account') }}"data-toggle="tooltip"
                            data-placement="top">
                            <i class="bi bi-patch-check-fill"></i>
                        </small>
                    @endif

                    <small class="text-muted font-14">{{ '@' . $stream->user->username }}</small>

                </h5>

            </div><!-- media body -->
        </div><!-- media -->
    </div><!-- card body -->


    @if ($stream->name)
        <div class="card-body pt-0 pb-3">
            <p class="mb-0 update-text position-relative text-word-break font-weight-bold">
                {!! Helper::linkText($stream->name) !!}
            </p>
        </div>
    @endif


        <div class="btn-block">
            @if (count($mediaImageVideo) == 1)

                @foreach ($mediaImageVideo as $media)
                    @php
                        $url = Helper::getFile(config('path.livestream') . $media);
                        $mimeType = Storage::mimeType(config('path.livestream') . $media);
                        $fileSize = Storage::size(config('path.livestream') . $media);

                    @endphp
                    @if (in_array($mimeType,['image/png','image/jpeg','image/jpg','image/gif','image/ief']))

                        <a href="{{ $url }}" class="glightbox w-100" data-gallery="gallery{{ $response->id }}">
                            <img src="{{ $url }}?w=130&h=100"
                                data-src="{{ $url }}?w=960&h=980" class="img-fluid lazyload d-inline-block w-100 post-image"
                                alt="{{ e($response->description) }}">
                        </a>
                    @endif


                    @if (in_array($mimeType,['video/mp4','video/quicktime','video/3gpp','video/mpeg','video/x-matroska','video/x-ms-wmv','video/vnd.avi','video/avi','video/x-flv']))
                        <video class="js-player w-100 @if (!request()->ajax()) invisible @endif" controls>
                            <source src="{{ $url }}" type="video/mp4" />
                        </video>
                    @endif

                    @if (in_array($mimeType,['audio/x-matroska','audio/mpeg']))
                        <div class="mx-3 border rounded">
                            <audio id="music-{{ $url }}" preload="metadata"
                                class="js-player w-100" controls>
                                <source src="{{ $url }}"
                                    type="audio/mp3">
                                Your browser does not support the audio tag.
                            </audio>
                        </div>
                    @endif

                    @if (in_array($mimeType,['application/x-zip-compressed','application/zip','application/pdf']))
                    <a href="{{$url}}" class="d-block text-decoration-none">
                        <div class="card mb-3 mx-3">
                            <div class="row no-gutters">
                                <div class="col-md-2 text-center bg-primary rounded-left">
                                    <i class="far fa-file-archive m-4 text-white" style="font-size: 40px;"></i>
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h5 class="card-title text-primary text-truncate mb-0">
                                            {{ $media }}
                                        </h5>
                                        <p class="card-text">
                                            <small class="text-muted">{{ ($fileSize > 0) ? ($fileSize/1048576) : 0 }} MB</small>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </a>
                    @endif
                @endforeach


            @else
            <div class="container-post-media">

                <div class="media-grid-{{ count($mediaImageVideo) }}">

                    @foreach ($mediaImageVideo as $media)
                        @php
                            $url = Helper::getFile(config('path.livestream') . $media);
                            $mimeType = Storage::mimeType(config('path.livestream') . $media);
                            $fileSize = Storage::size(config('path.livestream') . $media);
                        @endphp

                        @if (in_array($mimeType,['image/png','image/jpeg','image/jpg','image/gif','image/ief','video/mp4','video/quicktime','video/3gpp','video/mpeg','video/x-matroska','video/x-ms-wmv','video/vnd.avi','video/avi','video/x-flv','audio/x-matroska','audio/mpeg','application/x-zip-compressed','application/zip','application/pdf']))
                            <a href="{{ $url }}" class="media-wrapper rounded-0 glightbox"
                                data-gallery="gallery{{ $stream->id }}"
                                style="background-image: url('{{  $url }}?w=960&h=980')">

                                @if (in_array($mimeType,['video/mp4','video/quicktime','video/3gpp','video/mpeg','video/x-matroska','video/x-ms-wmv','video/vnd.avi','video/avi','video/x-flv']))
                                    <span class="button-play">
                                        <i class="bi bi-play-fill text-white"></i>
                                    </span>
                                    <video playsinline muted preload="metadata" class="video-poster-html">
                                        <source src="{{ $url }}" type="video/mp4" />
                                    </video>
                                @endif

                                @if (in_array($mimeType,['image/png','image/jpeg','image/jpg','image/gif','image/ief']))

                                    <img src="{{ $url }}?w=130&h=100"
                                            data-src="{{ $url }}?w=960&h=980" class="img-fluid lazyload d-inline-block w-100 post-image"
                                            alt="{{ e($stream->description) }}">
                                @endif

                                @if (in_array($mimeType,['audio/x-matroska','audio/mpeg']))
                                    <div class="mx-3 border rounded">
                                        <audio id="music-{{ $url }}" preload="metadata"
                                            class="js-player w-100" controls>
                                            <source src="{{ $url }}"
                                                type="audio/mp3">
                                            Your browser does not support the audio tag.
                                        </audio>
                                    </div>
                                @endif
                                @if (in_array($mimeType,['application/x-zip-compressed','application/zip','application/pdf']))
                                    <div class="card mb-3 mx-3">
                                        <div class="row no-gutters">
                                            <div class="col-md-2 text-center bg-primary rounded-left">
                                                <i class="far fa-file-archive m-4 text-white" style="font-size: 40px;"></i>
                                            </div>
                                            <div class="col-md-10">
                                                <div class="card-body">
                                                    <h5 class="card-title text-primary text-truncate mb-0">
                                                        {{ $media }}
                                                    </h5>
                                                    <p class="card-text">
                                                        <small class="text-muted">{{ ($fileSize > 0) ? ($fileSize/1048576) : 0 }} MB</small>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            </a>
                        @endif
                    @endforeach
                </div><!-- img-grid -->
            </div><!-- container-post-media -->
            @endif


        </div><!-- btn-block -->

</div><!-- card -->

