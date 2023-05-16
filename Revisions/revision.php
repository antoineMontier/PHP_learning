<?php
// == Ex 1.1

function getAttributesFromAssoc(array $attributes) : string {
    if (!isset($attributes) || !is_array($attributes)) return '';
    $res = '';
    foreach ($attributes as $key => $val){
        $res .= $key.'=\''.$val.'\' ';
    }
    return $res;
}

// echo getAttributesFromAssoc(['rowspan'=>'2', 'class'=>'center red','valign'=>'middle']);

// == Ex 1.2

function getCodeHTML(string $item, string $title, array $attributes = null){
    $res = '<'.$item.'';
    if($attributes == null)
        $res .= '';
    else
    $res .= ' '.getAttributesFromAssoc($attributes).'';
    if(trim($title) == '')
        return $res.'/>';
    return $res.'>'.$title.'</'.$item.'>';
}
echo getCodeHTML('td', 'message', ['colspan'=>'3', 'align'=>'center'])."\n";
echo getCodeHTML('h1', 'Grand titre')."\n";
echo getCodeHTML('img', '', ['src'=>'toto.jpg', 'alt'=>'alt'])."\n";
?>