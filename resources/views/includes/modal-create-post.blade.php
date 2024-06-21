<div class="modal fade" id="postFormModal" tabindex="-1" role="dialog" aria-labelledby="post-modal-form" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm modal-post" role="document">
        <div class="modal-content">
            <div class="modal-body p-0">
                @auth
                    @php
                        $user = auth()->user();
                    @endphp
                @endauth
                
                @if (auth()->check() && auth()->user()->verified_id != 'reject')
                    @include('includes.form-post')

                @else 
                 <div class="card">
                    <div class="card-body">
                        <p>Please Login First Or Varify Account</p>   
                    </div>
                </div> 
                @endif
            </div>
        </div>
    </div>
</div>
