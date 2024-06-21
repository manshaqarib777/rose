<?php

namespace App\Providers;

use App\Models\Widget;
use App\Models\Categories;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Blade::withoutDoubleEncoding();
        Paginator::useBootstrap();

        $widgets = Widget::where('type','menu')->orderBy('serial_no', 'ASC')->limit(5)->get();  

        $w_categories = null;
        foreach($widgets as $widget){
            $content = $widget->content ?? null;
            if($content != null){
                $w_categories[$content->name] = $content->child;
            }
        } 

        view()->composer(
            'includes.menu-home', 
            function ($view) use ($w_categories) {
                $view->with('w_categories', $w_categories);
            }
        );

        $top_categories = Widget::where('type','top')->orderBy('serial_no', 'ASC')->limit(5)->get(); 
        view()->composer(
            'includes.navbar', 
            function ($view) use ($top_categories) {
                $view->with('top_categories', $top_categories);
            }
        );
    }
}
