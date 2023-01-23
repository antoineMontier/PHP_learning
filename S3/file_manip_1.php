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

$reader = fopen("departments.txt", "r");
if ($reader == false) {
    echo "Error opening file";
    exit(1);
}
$code_html = GetDebutHTML("Departments");

$code_html .= "<table border=1><tr>";
//firste line
$buffer = fgets($reader, 4096);
$arr = explode(",", $buffer);

for($i = 0 ; $i < count($arr) ; $i++){
    $code_html .= "<th>";
    $code_html .= $arr[$i];
    $code_html .= "</th>";
}

$code_html .= "</tr>";



while (($buffer = fgets($reader, 4096)) !== false) {
    $buffer = fgets($reader, 4096);
    $arr = explode(",", $buffer);

    $code_html .= "<tr>";

    for($i = 0 ; $i < count($arr) ; $i++){
        $code_html .= "<td>";
        $code_html .= $arr[$i];
        $code_html .= "</td>";
    }
    
    $code_html .= "</tr>";}




$code_html .= "</table>";

$code_html .= GetFinHTML();
echo $code_html;

fclose($reader);
?>