<?php
function getHtmlAttr(array $attributes) : string {
    $res = "";
    foreach($attributes as $key => $value)
        $res .= "$key = '$value' ";
    return $res;
}

//echo getHtmlAttr(['rowspan'=>'2', 'class'=>'centre rouge','valign'=>'middle']);

function itemHTML(string $name, string $content, array $attributes=null) : string {
    $res = "<$name ";
    if($attributes != null)
        $res .= getHtmlAttr($attributes);
    if(trim($content) != '')
        $res .= ">$content</$name>";
    else
        $res .= " />";
    return $res;
}

// echo itemHTML('td', 'message', ['colspan'=>'3', 'align'=>'center'])."\n";
// echo itemHTML('h1', 'Grand titre')."\n";
// echo itemHTML('img', '', ['src'=>'toto.jpg', 'alt'=>'alt'])."\n";

include '../Env.php';
function getFilm(int $id) : array {
    $ptrDB = connexion();

    $query = "SELECT * FROM film WHERE film_id = $id;";

    $query_res = pg_query($ptrDB, $query);

    $res = pg_fetch_all($query_res);

    pg_free_result($query_res);
    pg_close($ptrDB);
    return $res[0];
}

function updateFilm(int $id, int $newlength){
    $ptrDB = connexion();

    $query = "UPDATE film SET film_length = $newlength WHERE film_id = $id;";

    $query_res = pg_query($ptrDB, $query);
    pg_free_result($query_res);
    pg_close($ptrDB);
}

function deleteFilm(int $id){
    $ptrDB = connexion();

    $query = "DELETE FROM film WHERE film_id = $id;";

    $query_res = pg_query($ptrDB, $query);
    pg_free_result($query_res);
    pg_close($ptrDB);
}

?>