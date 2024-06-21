@php
     // Calculate the difference
       $createdAt = new Carbon\Carbon($response->created_at);
        $updatedAt = new Carbon\Carbon($response->updated_at);
        $diffInSeconds = $updatedAt->diffInSeconds($createdAt);

        // Convert to minutes and seconds
        $minutes = floor($diffInSeconds / 60);
        $seconds = $diffInSeconds % 60;

        // Format the difference
        $timeDifference = sprintf('%02d:%02d', $minutes, $seconds);
 @endphp


 <a href="{{ url('live', $response->user()->username) }}"  class="w-100 cursor-pointer">
     <div class="box-card w-100 p-2 h-100 rounded cursor-pointer" onclick='window.location.href="{{ url('live', $response->user()->username) }}"'
         style="background: @if($response->livestream_image != null) url('{{ Helper::getFile(config('path.livestream') . $response->livestream_image) }}') @else @if ($response->user()->cover != '') url({{ route('resize', ['path' => 'cover', 'file' => $response->user()->cover, 'size' => 480]) }}) @endif @endif #303030 center center; background-size: cover;">

         <div class="d-flex align-items-center justify-content-end" style="gap: 8px;">
             <a href="#" class="badge badge-sm bg-primary">VR</a>
             <a href="#" class="badge badge-sm bg-info">VOD</a>
             <a href="#" class="badge badge-sm bg-danger">Live</a>
         </div>

         <p class="mb-5 mt-5 text-center fs-7">
             {{ Str::limit($response->name, 100, '...') }}
         </p>

         <div class="d-flex align-items-end justify-content-between">
             <div class="d-flex align-items-end" style="gap: 5px;">
                 <img src="{{ Helper::getFile(config('path.avatar') . $response->user()->avatar) }}" width="40"
                     height="30" alt="{{ $response->user()->name }}" class="img-user-small" />

                 <p class="mb-0 text-white fs-7">
                     {{ $response->user()->hide_name == 'yes' ? Str::limit($response->user()->username, 6, '...') : Str::limit($response->user()->name, 6, '...') }}
                 </p>
             </div>


             <button type="button" class="badge bg-dark px-2 py-2 text-white">{{ $timeDifference }}</button>
         </div>

     </div>

 </a>
