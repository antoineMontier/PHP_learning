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

echo intoBalise("br");
echo '
';
echo intoBalise("h5", "title");
echo '
';
echo intoBalise("h5", "title", array('class' => 'red', 'id' => 'key1'));
echo '
';