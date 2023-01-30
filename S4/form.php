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
function form():string{
    $arr = file("ville.txt");

    $res = getDebutHTML();
    $res .= '<form action="form.php" method="post|get" enctype="type" target="surname">';
    $res .= '<p>Nom:<input type="text" name="nom" size="10" /><br />';
    $res .= 'Prenom:<input type="text" name="prenom" size="10" /></p>';


    $res .= '<p>Ville<select size="';
    $res .= strval(count($arr));
    $res .= '" name="ville">';
    for($i = 0; $i < count($arr) ; $i++){
        $res .= '<option value="';
        $res .= $arr[$i];
        $res .= '" > ';
        $res .= $arr[$i];
        $res .= ' </option>';
    }
    $res .= '</select>';

    $res .= '<p>Musique  ';

    $res .= '<input type="checkbox" value="Classic" checked="unchecked" /> Classic';
    $res .= '<input type="checkbox" value="Jazz" checked="unchecked" /> Jazz';
    $res .= '<input type="checkbox" value="Rock" checked="unchecked" /> Rock';
    $res .= '<input type="checkbox" value="Pop" checked="unchecked" /> Pop';
    $res .= '<input type="checkbox" value="Rap" checked="unchecked" /> Rap';
    $res .= '<input type="checkbox" value="Electro" checked="unchecked" /> Electro';

    $res .= '</p>';


    //$res .= '<input >';
    $res .=  '</form>';
    $res .= getFinHTML();

    return $res;
}

echo form();





?>