<?php

$filename = basename($_GET['filename']);
$filename = $_GET['filename'];
$timeline = floatval($_GET['timeline']);
$playmode = $_GET['playmode'];

$result   = "Error";
$timeco   = 0.1;

if($timeline < $timeco) {

    $url = "https://realcore.apg-8585.com/playmovie?strFilename=".$filename;
    $ch = curl_init($url);
    $fp = fopen("../../logs/video.log", "w");

    curl_setopt($ch, CURLOPT_FILE, $fp);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $result = curl_exec($ch);

    if(curl_error($ch)) {
        fwrite($fp, curl_error($ch));
    }
    curl_close($ch);
    fclose($fp);

} else {

    $url = "https://realcore.apg-8585.com/framemove?iFrameTime=".$timeline;
    $ch = curl_init($url);
    $fp = fopen("../../logs/video.log", "w");

    curl_setopt($ch, CURLOPT_FILE, $fp);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $result = curl_exec($ch);

    if(curl_error($ch)) {
        fwrite($fp, curl_error($ch));
    }
    curl_close($ch);
    fclose($fp);
}

echo $url . ":" . $result;
