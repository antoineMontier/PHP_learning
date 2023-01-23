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

function multiplicationTable(int $n=10):string{
    $r = getDebutHTML("Multiplication table");
    $r .= intoBalise('h1', 'multipliation table');
    $ii = '';
    for ($i = -1; $i <= $n; $i++) {

        $jj = '';
        for ($j = -1; $j <= $n; $j++) {
            if($i == -1 && $j == -1){
                $jj .= intoBalise('th', 'X');
            }elseif($i == -1){
                $jj .= intoBalise('th', strval($j));
            }elseif ($j == -1) {
                $jj .= intoBalise('th', strval($i));
            }else{
                $jj .= intoBalise('td', strval($j * $i));
            }
        }
        $ii .= intoBalise('tr', $jj);
    }

    $r .= intoBalise('table', $ii, array('border' => '"5"', 'cellspacing' => '"0"', 'cellpadding' => '"5"'));
    $r .= getFinHTML();
    return $r;
}

echo multiplicationTable(10);