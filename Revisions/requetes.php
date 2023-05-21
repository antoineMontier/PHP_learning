<?php
include '../Env.php';

function getCollectiviteById(string $id) : array {
    $ptrDB = connexion();

    $query = "SELECT * FROM collectivite WHERE col_code LIKE '$id';";

    $qres = pg_query($ptrDB, $query);

    $res = pg_fetch_all($qres);
    pg_free_result($qres);
    pg_close($ptrDB);
    return $res[0];
}
// print_r(getCollectiviteById(5));


function getAllCollectivite() : array {
    $ptrDB = connexion();

    $query = "SELECT * FROM collectivite";
    
    $qres = pg_query($ptrDB, $query);

    $res = pg_fetch_all($qres);

    pg_free_result($qres);
    pg_close($ptrDB);
    return $res;
}
// print_r(getAllCollectivite());


function insertCollectivite(array $collectivite) : array {
    $ptrDB = connexion();

    $query = "INSERT INTO collectivite  
    VALUES ('".$collectivite['col_code']."', '".$collectivite['col_nom']."', '".$collectivite['col_population']."', '".$collectivite['col_superficie']."', '".$collectivite['col_region']."');";

    $qres = pg_query($ptrDB, $query);
    if($qres == false) return array("msg" => "error");
    pg_free_result($qres);
    pg_close($ptrDB);

    return getCollectiviteById($collectivite['col_code']);
}
/*
print_r(insertCollectivite(['col_code' => '125'
                            , 'col_nom' => 'my_region'
                            , 'col_population' => 9876
                            , 'col_superficie' => 12345
                            , 'col_region' => 'Bretagne']));
*/

function deleteCollectivite(string $id) {
    $ptrDB = connexion();
    $query = "DELETE FROM collectivite WHERE col_code LIKE '$id';";

    $qres = pg_query($ptrDB, $query);
    if($qres == false) return;
    pg_free_result($qres);
    pg_close($ptrDB);
}

// deleteCollectivite('125');

function updateCollectivite(array $collectivite) {
    $ptrDB = connexion();
    
    $query = "UPDATE collectivite SET   col_nom = '".$collectivite['col_nom']."',
                                        col_population = '".$collectivite['col_population']."',
                                        col_superficie = '".$collectivite['col_superficie']."' ,
                                        col_region = '".$collectivite['col_region']."' 
                WHERE col_code = '".$collectivite['col_code']."';";

    $qres = pg_query($ptrDB, $query);

    $qres = pg_query($ptrDB, $query);
    if($qres == false) return array("msg" => "error");
    pg_free_result($qres);
    pg_close($ptrDB);

    return getCollectiviteById($collectivite['col_code']);
}
/*
print_r(updateCollectivite([  'col_code' => '125'
                            , 'col_nom' => 'yguhij'
                            , 'col_population' => 123
                            , 'col_superficie' => 12345
                            , 'col_region' => 'BReBRe']));
*/