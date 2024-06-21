@if (!request()->get('q') || (request()->get('q') && strlen(request()->get('q')) <= 2))

    <button type="button" class="btn-menu-expand btn btn-primary btn-block mb-4 d-lg-none" type="button"
        data-toggle="collapse" data-target="#navbarFilters" aria-controls="navbarCollapse" aria-expanded="false">
        <i class="bi bi-filter-right mr-2"></i> {{ trans('general.filter_by') }}
    </button>

    <div class="navbar-collapse collapse d-lg-block" id="navbarFilters">
        <div class="bg-white px-3 py-3" style="height: 100vh; overflow-y: auto;">

            @if (request()->is('/'))
                <span class="borde">

                    <a class="d-flex align-items-center mb-2" style="gap: 8px;" href="/">
                        <img src="{{ url('public/img/popular.png') }}" class="mr-2" width="25" />
                        {{ trans('general.Home') }}
                    </a>

                    <a class="d-flex align-items-center mb-2" style="gap: 8px;" href="/explore">
                        <img src="{{ url('public/img/featured.png') }}" class="mr-2" width="25" />
                        {{ trans('general.Feed') }}
                    </a>

                    <a class="d-flex align-items-center mb-2" style="gap: 8px;"
                        href="{{ url('explore/creators/live') }}">
                        <img src="{{ url('public/img/live.png') }}" class="mr-2" width="25" />
                        {{ trans('general.live') }}
                    </a>

                    <a class="d-flex align-items-center mb-2" style="gap: 8px;" href="/my/bookmarks">
                        <img src="{{ url('public/img/creators.png') }}" class="mr-2" width="25" />
                        {{ trans('general.Favorite') }}
                    </a>

                    <a class="d-flex align-items-center mb-2" style="gap: 8px;"
                        href="{{ isset($isCategory) ? url('category/' . $slug . '', 'free') : url('creators/free') }}">
                        <img src="{{ url('public/img/unlock.png') }}" class="mr-2" width="25" />
                        {{ trans('general.Watch History') }}
                    </a>
                </span>

                <hr />
            @endif

            @isset($s_childs)
                <span class="borde">
                    @foreach ($s_childs as $child)
                        <a class='d-flex align-items-center mb-2 @if (Request::path() == "category/$child->slug") bg-dark-transparent @endif'
                            style="gap: 8px;" href="{{ url('category', $child->slug) }}">
                            <img src="{{ url('public/img-category', $child->image) }}" class="mr-2" width="25" />
                            {{ $child->name }}
                        </a>
                    @endforeach
                </span>
            @else
                @foreach ($w_categories as $categ => $w_category)
                    <span class="borde">

                        <span class="category-filter d-lg-block d-none">
                            <i class="bi bi-filter-right mr-2"></i> {{ $categ }}
                        </span>

                        @foreach ($w_category as $category)
                            <a class='d-flex align-items-center mb-2 @if (Request::path() == "category/$category->slug") bg-dark-transparent @endif'
                                style="gap: 8px;" href="{{ url('category', $category->slug) }}">
                                <img src="{{ url('public/img-category', $category->image) }}" class="mr-2"
                                    width="25" />
                                {{ $category->name }}
                            </a>
                        @endforeach
                    </span>

                    @if (!$loop->last)
                        <hr />
                    @endif
                @endforeach
            @endisset
        </div>
    </div>
@endif
