<?php

function getDebutHTML(string $title = "Title content"): string{
    $res = '<html lang="fr">
        <head>
            <meta charset="utf-8">
            <title>';
    $res .= $title;
    $res .= '</title>
            <!-- <link rel="stylesheet" href="style.css"> -->
        </head>
        <body>';
    return $res;
}

function getFinHTML():string{
    $res = '</body>
    </html>';
    return $res;
}
function getPrefectureOf(string $dep_id):string{
    $array = file("ville.csv");
    for($i = 0 ; $i < count($array); $i++){
        $subarray = explode(",", $array[$i]);
        //echo $subarray[4];
        if($subarray[3] == "préfecture" &&  $subarray[4] == $dep_id){
            return $subarray[1];
        }
    }
    return "";
}

function getS_PrefectureOf(string $dep_id):string{
    $array = file("ville.csv");
    $res = "";
    for($i = 0 ; $i < count($array); $i++){
        $subarray = explode(",", $array[$i]);
        //echo $subarray[4];
        if($subarray[3] == "sous-préfecture" &&  $subarray[4] == $dep_id){
            $res .= $subarray[1];
            $res .= ", ";
        }
    }
    if(strlen($res) > 2 && $res[strlen($res)-1] == " " && $res[strlen($res)-2] == ",")
        $res =  substr($res, 0, -2);
    return $res;
}

$code_html = GetDebutHTML();

$arr = file("departments.txt");

$code_html .= '<ul>';

for($i=1;$i<count($arr);$i++){
    $code_html .= "<li>";
    $arrr = explode(",", $arr[$i]);

    $code_html .= $arrr[count($arrr)-1];

    $code_html .= "<ul>";

    for($j=0;$j<count($arrr)-1;$j++){
        $code_html .= "<li>";
        $aw = explode(",", $arr[0]);
        $code_html .= $aw[$j];
        $code_html .= " : ";
        $code_html .= $arrr[$j];
        $code_html .= "</li>";
    }
    $code_html .= "<li>";
    $code_html .= "Prefecture : ";
    $code_html .= getPrefectureOf($arrr[0]);
    $code_html .= "</li>";
    $code_html .= "<li>";
    $code_html .= "Sous-Prefecture : ";
    $code_html .= getS_PrefectureOf($arrr[0]);
    $code_html .= "</li>";

    $code_html .= "</ul></li>";

}
$code_html .= '</ul>';




$code_html .= GetFinHTML();
echo $code_html;

?>