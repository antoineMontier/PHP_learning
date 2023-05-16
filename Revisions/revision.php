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

// echo getAttributesFromAssoc(['rowspan'=>'2', 'class'=>'center red','valign'=>'middle'])."\n";


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

// echo getCodeHTML('td', 'message', ['colspan'=>'3', 'align'=>'center'])."\n";
// echo getCodeHTML('h1', 'Grand titre')."\n";
// echo getCodeHTML('img', '', ['src'=>'toto.jpg', 'alt'=>'alt'])."\n";


// == Ex 2.1
include "../Env.php";

function getFilmById(int $id) : array{
    $ptrDB = connexion();
    if ($ptrDB == false) return array();

    $query = "SELECT * FROM film WHERE film_id = $id;";

    $res = pg_query($ptrDB, $query);

    if($res == false){
        pg_close($ptrDB);
        return array();
    }
    pg_close($ptrDB);
    $result = pg_fetch_row($res);
    return $result;
}

// print_r (getFilmById(1));


// == Ex 2.2

function updateFilmLenght(int $id, int $newLenght){
    $ptrDB = connexion();

    if($ptrDB == false) return;

    $query = "UPDATE film SET film_length = $newLenght WHERE film_id = $id;";

    pg_query($ptrDB, $query);

    pg_close(($ptrDB));
}

// updateFilmLenght(1, 55);






?>