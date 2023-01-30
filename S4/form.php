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
    $res .= '<p> <select size="';
    $res .= strval($nb_city);
    $res .= '" name="ville">'
    <option value="Amiens" > Amiens </option>
    <option value="Bordeaux" > Bordeaux</option>
    <option value="Caen"> Caen</option>
    <option value="Lille"> Lille</option>
    $res .= '</select>';
    //$res .= '<input >';
    $res .=  '</form>';
    $res .= getFinHTML();

    return $res;
}

echo form();





?>