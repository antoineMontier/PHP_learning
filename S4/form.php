<?php

function intoBalise(string $bal, string $value = ' ', array $params=null):string{
    $res = '<';
    $res .= $bal;
    if($value == ' ' && $params == null) {
        $res.=' />';
        return $res;
    } elseif ($params != null) {
        foreach ($params as $key => $val) {
            $res .=' ';
            $res .= $key;
            $res .= '=\'';
            $res .= $val;
            $res .= '\'';
        }
    }
    $res .= '>';
    $res .= $value;
    $res .= '</';
    $res .= $bal;
    $res .= '>';
    return $res;
}
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

    $res .= '<input type="checkbox" value="Classic" /> Classic';
    $res .= '<input type="checkbox" value="Jazz" /> Jazz';
    $res .= '<input type="checkbox" value="Rock" /> Rock';
    $res .= '<input type="checkbox" value="Pop" /> Pop';
    $res .= '<input type="checkbox" value="Rap" /> Rap';
    $res .= '<input type="checkbox" value="Electro" /> Electro';

    $res .= '</p>';

    $res .= '<p>Age';

    $res .= '<input type="radio" name="age" value="m10" /> <10';
    $res .= '<input type="radio" name="age" value="1120" /> 11-20';
    $res .= '<input type="radio" name="age" value="2140" /> 21-40';
    $res .= '<input type="radio" name="age" value="4160" /> 41-60';
    $res .= '<input type="radio" name="age" value="p60" /> >60';

    $res .= '</p>';

    $res .= '<p><input type="submit" value="OK" /></p>';
    $res .= '<input type="reset" name="annuler" value="Reset" />';




    //$res .= '<input >';
    $res .=  '</form>';
    $res .= getFinHTML();

    return $res;
}

echo form();





?>