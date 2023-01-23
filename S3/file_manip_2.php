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

    $code_html .= "</ul></li>";

}
$code_html .= '</ul>';




$code_html .= GetFinHTML();
echo $code_html;

?>