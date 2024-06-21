<?php


if (!function_exists('select_dropdown')) {
    function select_dropdown($models, $current_option = null, $has_child = null, $name = 'parent_id', $class = 'select2', $id = '', $multiple = null)
    {
        $html = '<select name="' . $name . '" id="'.$id.'" class="form-select form-select-sm  ' . $class . '" ' . $multiple . '>';
        $html .= '<option value="" selected>None</option>';


        $modelClass = "App\\Models\\$models";

        $datas = [];

        if($has_child != null){
            if (class_exists($modelClass)) {
                $datas = $modelClass::get();
            }

            foreach ($datas as $data) {
                $html .= '<option data-title="'.$data->name.'" value="' . $data->id . '" ' . ($data->id == $current_option ? 'selected' : '') . '>' . $data->name . '</option>';
            }
        }else{
            
            if (class_exists($modelClass)) {
                $datas = $modelClass::with('child')->withCount('child')->where('parent_id', '=', null)->get();
            }

            foreach ($datas as $data) {
                $html .= '<option data-title="'.$data->name.'" value="' . $data->id . '" ' . ($data->id == $current_option ? 'selected' : '') . '>' . $data->name . '</option>';
                if ($data->child_count > 0) {
                    $l = '';
                    $html .= select_dropdown_option($data->child, $current_option, $l);
                }
            }
        }

        
        $html .= '</select>';

        return $html;
    }
}


// ========= get select dropdown ===============
if (!function_exists('select_dropdown_option')) {
    function select_dropdown_option($models, $current_option = null, $l = '--')
    {
        $html = '';
        $l .= '--';

        foreach ($models as $model) {
            $html .= '<option data-title="'.$model->name.'" value="' . $model->id . '" ' . ($model->id == $current_option ? 'selected' : '') . '>' . $l . $model->name . '</option>';
            if (count($model->child) > 0) {
                $html .= select_dropdown_option($model->child, $current_option, $l);
            }
        }


        return $html;
    }
}
