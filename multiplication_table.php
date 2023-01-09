<?php
$n = 100;
$codeHTML = '<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Séances</title>
    <!-- <link rel="stylesheet" href="style.css"> -->
</head>
<body>
    <h1>Table de multiplication</h1>
    <table border="5" cellspacing="0" cellpadding="5" >';
for($i=-1;$i<=$n;$i++){
    $codeHTML .= '<tr>';
    for($j=-1;$j<=$n;$j++){

    if($i == -1 && $j == -1){
        $codeHTML .= '<th>';
        $codeHTML .= 'X';
        $codeHTML .= '</th>';
    }elseif($i == -1){
        $codeHTML .= '<th>';
        $codeHTML .= strval($j);
        $codeHTML .= '</th>';
    }elseif ($j == -1) {
        $codeHTML .= '<th>';
        $codeHTML .= strval($i);
        $codeHTML .= '</th>';
    }else{
        if($j % 2 == 0){
            $codeHTML .= '<td bgcolor ="red">';
        }else{
            $codeHTML .= '<td>';
        }
        $codeHTML .= strval($i*$j);
        $codeHTML .= '</td>';
    }

    }
    $codeHTML .= '</tr>';
}

$codeHTML .= '</table>
    </body>
    </html>';

echo $codeHTML;