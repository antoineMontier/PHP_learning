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
    pg_free_result($res);
    return $result;
}

// print_r (getFilmById(1));


// == Ex 2.2

function updateFilmLenght(int $id, int $newLenght){
    $ptrDB = connexion();

    if($ptrDB == false) return;

    $query = "UPDATE film SET film_length = $newLenght WHERE film_id = $id;";

    $res = pg_query($ptrDB, $query);

    pg_free_result($res);

    pg_close(($ptrDB));
}

// updateFilmLenght(1, 55);


// == Ex 3.1

function getOpenItem(string $item, array $attributes = null) : string{
    $res = '<'.$item.' ';
    if(isset($attributes) && $attributes != null)
        foreach ($attributes as $key => $val)
            $res .= $key.'="'.$val.'"';
    return $res.'>';
    
}

function page_form(){
    // include htmlUtility.php
    include "../S2/phpHtmlLib.php";
    $pageHTML = getDebutHTML();
    $attributsForm = [
        'action' => './script.php',
        'method' => 'post'
    ];
    $pageHTML .= getOpenItem('form', $attributsForm);
    $pageHTML .= '<fieldset>';
    $pageHTML .= getCodeHTML('legend', 'Choisissez un film');
    $fp = fopen('film.txt', 'r');
    if ($fp) {
        while (!(feof($fp))) {
            $ligne = fgets($fp);
            $film_array = explode('%%', $ligne);
            $title = trim($film_array[1]);
            $pageHTML .= getCodeHTML('input', $title, ['type' => 'radio', 'value' => $title, 'name' => 'film_selection', 'id' => $title]);
            $pageHTML .= '<br>';
        }
    }
    $pageHTML .= '</fieldset>';
    $pageHTML .= '<input type="submit" value="envoyer" name="send" /></form>';
    $pageHTML .= getFinHTML();
    echo $pageHTML;
}

// echo page_form();


// == Ex 3.2

function display_film_information() {
    include "../S2/phpHtmlLib.php";
    $pageHTML = getDebutHTML();
    $attributsForm = [
        'action' => './script.php',
        'method' => 'post'
    ];
    $pageHTML .= getOpenItem('form', $attributsForm);
    $pageHTML .= '<ul>';
    $pageHTML .= '<fieldset>';
    $pageHTML .= getCodeHTML('legend', 'Film on screen');
    $fp = fopen('film.txt', 'r');
    if ($fp) {
        while (!(feof($fp))) {
            $ligne = fgets($fp);
            $film_array = explode('%%', $ligne);
            $infos = ['film_id', 'film_title', 'film_year', 'film_length'];
            $pageHTML .= '<li><ul>';
            for ($i = 0; $i < count($film_array) ; $i++)
                $pageHTML .= '<li>'.$infos[$i].' : '.trim($film_array[$i]).'</li>';
            $pageHTML .= getCodeHTML('a', 'update', ['href' => './#']); // replace with the update page
            $pageHTML .= '</ul></li>';

        }
    }
    $pageHTML .= '</ul>';
    $pageHTML .= '</fieldset>';
    $pageHTML .= '<input type="submit" value="envoyer" name="send" /></form>';
    $pageHTML .= getFinHTML();
    echo $pageHTML;
}

// echo display_film_information();


// == Ex 3.3

function form_update_film_length(int $id){
    include "../S2/phpHtmlLib.php";
    $film = getFilmById($id);
    $pageHTML = getDebutHtml();
    $pageHTML .= getCodeHTML('h1', "Modifier la durée");
    $attributsForm = [
        'action' => './script.php',
        'method' => 'post'
    ];
    $pageHTML .= getOpenItem('form', $attributsForm);
    $pageHTML .= '<ul>';
    foreach ($film as $key => $val)
        $pageHTML .= '<li>' . $key .' : '. $val . '</li>';
    $pageHTML .= '</ul>';
    $pageHTML .= '<p>';
    $pageHTML .= getCodeHTML('b', 'Nouvelle durée :');
    $pageHTML .= "<input type='quantity' min='0' max='200' name='update' value=".trim($film[3])."/>";
    $pageHTML .= '</p>';
    $pageHTML .= '<input type="submit" name = "send" value = "send" id="send"/>';
    $pageHTML .= '</form>';
    $pageHTML .= getFinHTML();
    echo $pageHTML;
}

// echo form_update_film_length(1);

?>