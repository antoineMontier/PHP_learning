# PHP_learning

To *compile*, use the following commmand :<br />
`php -f script.php`


## how to write a function ?
```PHP
function function_name([[type1] $param_1, ..., [typen] $param_n = default_value]) [: return_type] {
	//  instructions
	[return $result;]
}
```

### how to comment ?
use `//` for one line or, `/*blabla*/` for multiple lines<br />

every variable is preceded by `$` there is no type for the variables and, no initialization is needed (same as python)<br />

a php file starts with `<?php` and ends with `?>`

### Environnement

there are a lot of environnement variables, such as `$SERVER_NAME` and `$REMOTE_ADDR`, to know about them, use the following command `phpinfo();`

## constant variables

To define a constant variable, use the following command `define("CONSTANT_NAME", const_value);`

## PHP`s types
-bool (TRUE or FALSE)
-int
-float
-string, (use ' or ")
-array

## 2 types of arrays

    
-**auto-incremented arrays :**
    same arrays as C and java, starts with index 0 and go until index n - 1.
        `$arr = array(-5, 12, 73, -4, 35);`
    
-**associative arrays :**
same as python disctionnaries, access a table the keys of the array.
```PHP
$arr = array('green' => 'grass', 
                    'red' => 6,
                    'blue' => 'water');
```
    
access the array content this way : `echo($arr[3]);//-4``echo($arr[`red`])//6`

### operators : 
`+ - / * %`
### comp operators : 
`== != < <= > >= === !== <=>`
differences between == and ===
== only looks for the value, `2 == '2'` is true `2 === '2'` is false
### boolean operators
`&& || xor !`
### incrementations
`$a++ ++$a` post/pre increment
### control structures 
- for : 
```PHP
for($i=0;$i<sizeof($tab);$i++) {
    echo("valeur:$tab[$i]\n");
}
for ($i = 1; $i <= 10; print $i, $i++);
```
- if : 
```PHP
if ($i == 0) {
    print "i is 0";
}elseif ($i == 2) {
    print "i is 2";
  }else { 
    print "i is not 0 and 2";
}
```
- switch same as C
- foreach
```PHP
foreach($assoc as $key => $val) {
    echo "$key : $val\n";
}
```
- while same as C
- do while same as C

## create HTML code

create a variable to hold the HTML code (string), then echo this code. finally compile and then push the output into a file
- file
```PHP
<?php
$HTML_code = '<html>...'
$HTML_code .= '...</html>'  //.= concatenates a string
echo $HTML_code
>
```

- terminal execution :
```sh
$ php -f my_php_code.php > index.html
```
### Rand function

```PHP
$choice = rand(min, max);
```


## String functions

- strlen(string) : int
- explode(string $delimiter, string $source) : array
- substr(string $source, int $start [, int $length]) :string
- ltrim(string) : string
- rtrim(string) : string
- trim(string) : string
trim functions delete trailing spaces (\n, \r, \t...)

## Array functions

- sizeof(array) : int (element number)
- sort(array) : void
- array_pop(array) : <type-u>
- array_push(array, <type-u> push1, <type-u> push2...) : int

## reference arguments

Like in C programming, it's possible to access the adress of a variable with `&`.
The difference with C in the function is that the `&` symbol is only used in the function definition, then the function can be used normaly.
If the `&` symbol is not used in the function definition, you can still pass references when calling the function by adding`&` in front of the argument


# the forms

The HTML code needs to get this part in his code : 
```HTML
<form action="prog.php" method="post|get" enctype="type" target="name"> title </form>
```
- action is the program URL
- method is how we're sending values to the program
- enctype & target are no more used

### input 

input can have various tyoes : 
1. text
2. password
3. radio
4. checkbox
5. submit
6. image
7. rest
8. file
9. hidden

It has also various options : 
- name
- value (default value)
- size
- checked="checked" (default tick)
- selected="selected"
- required (imossible to tick until if the field is empty)


### select

```HTML
<select name="mymname" size="3">
    <option value=1> option one</option>
    <option value=2> option two</option>
    <option value=3> option three</option>
</select>
```

select parameters : 
- multiple=multiple
- size
- name

option parameters :
- selected (default selection)
- value
- disabled
- label ()

### label

```HTML
<label for="it">My label : 
    <input id="it" type="text" size="16" />
</label>
```

Label can be used inside a fieldset

<br />

In Html 5, new functionality appears (about 13 more)
each are unique. We're not using them in this learning PHP repository


## PHP form handling

there are several different environnement variables (`phpinfo();`) : 

- `$_GET`
- `$_POST`
- `$_SERVER`
- `$_SESSION` : keep information between two scripts
- `$_FILES` : file upload
- `$_COOKIE`
- `$_REQUEST` : contains GET, POST & COOKIE
- `$_ENV`

### CGI

We used to use the common gate interface to communicate between the web server and the script.

Nowadays, PHP communicates himself with the web server

## two methods to submit the result

### GET

transfer the URDL to the script (limit of ~8000 B)

### POST

transfer a real message to the script (Limited by the HTML server)


## Error gestion

In order to avoid errors : use the `requested keyword`

use a standard function : 
```PHP
function valid_form($method, $tabkeys){
    foreach($tabkeys as $key){
        if(!isset($method[$key]))
            return false;
    }
    return true;
}
```

The `isset()` method returns true if the given argument is not null.
Other functions such as `is_array()` are also useful to use

# Forms between two pages

A traditional web page has a form, most of users errors will be handled by the html code. We still need to use php after the form is submitted.

Consider the following example : 

```html
...
<form id = "my_form" action = "./script.php" method = "post">

    <div> <!-- required attribut will block the validate button if the name field is empty -->
        <input type = "text" id = "text_name" name = "surname" value="my_default_value" required>
        <label for = "text_name">Enter your surname</label>
    </div>

    <div> <!-- use <div> to display the fields horizontally -->
        <input type = "date" id = "birthdate" name = "birthdate" min = "1900-01-01" max = "2025-01-01" value="2000-01-01">
        <label for = "birthdate">Enter your birthdate</label>
    </div>

    <fieldset> <!-- fieldset makes a group of questions -->

        <legend>Choose your eye color</legend>

        <div>
            <input type="radio" id="blue" name="eye_color" value="blue">
            <label for="blue">blue</label>
        </div>

        <div> <!-- checked attribute make the input brown checked when the page loads -->
            <input type="radio" id="brown" name="eye_color" value="brown" checked>
            <label for="brown">brown</label>
        </div>

        <div>
            <input type="radio" id="green" name="eye_color" value="green">
            <label for="green">green</label>
        </div>
        
    </fieldset>

    <fieldset>
            <legend>Spoken languages</legend> <!-- Here, languages spoken will all be stored in an array -->

            <div>
                <input type="checkbox" id="en" name="languages[]" value="english">
                <label for="en">english</label>
            </div>

            <div>
                <input type="checkbox" id="fr" name="languages[]" value="french">
                <label for="en">french</label>
            </div>

            <div>
                <input type="checkbox" id="ch" name="languages[]" value="chinese">
                <label for="en">chinese</label>
            </div>

            <div>
                <input type="checkbox" id="jp" name="languages[]" value="japanese">
                <label for="en">japanese</label>
            </div>

        </fieldset>
        
    <input type="submit" value="Validate" /> <!-- send value to script.php -->
</form>
...
```

The above example shows the html code needed to call the `script.php` file with the form answers. Here's an example of php script to handle the result : 

```php
...
<?php
    // get the result 
        // error gestion
    if(isset($_POST['surname']))
        $surname = $_POST['surname'];
    else echo 'error';

    if(isset($_POST['birthdate']))
        $birthdate = $_POST['birthdate'];
    else echo 'error';

    if(isset($_POST['eye_color']))
        $eye_color = $_POST['eye_color'];
    else echo 'error';

    if(isset($_POST['languages[]']) && is_array($_POST['languages']))
        $languages = $_POST['languages'];
    else echo 'error';

    // display result
    echo "<p>You are $surname, born the $birthdate, Your eyes are $eye_color. You can speak ".count($languages)." languages</p>";
?>
...
```

#### Selections
HTML Selection offers a field of selection. It can be mutliple or not, it depends on the `multiple="multiple"` attribute.
If it's multiple, the user can have various choixces by pressing `Ctrl + click` or `Shift + click`.

html :  
```html
...
<form action="script.php" method="post">

    <select name="Country[]" multiple="multiple" id="countryform">

        <option value="France" selected>France</option>
        <option value="Germany" selected>Germany</option>
        <option value="United States" selected>United States</option>
        <option value="English">English</option>
        <option value="Australia">Australia</option>

    </select>
    <label for="countryform">Which country have you ever been to ?</label>

    <input type="submit" value="Validate">

</form>
...
```

Here is the php code to handle it : 

php:
```php
<?php
if(isset($_POST['Country[]']) && is_array($_POST['Country'])){
    $country = $_POST['Country'];
    foreach($country as $c)
        echo $c
}else
    echo 'error'
?>
```

#### Text area
Text area allows the user to input a large amount of text

html:
```html
...
<form action="script.php" method="post">
    <textarea name="bio" rows="4" cols="10" id="bioform" required></textarea>
    <label for="bioform">Enter your biography</label>
    <input type="submit" value="send" />
</form>
...
```

php:
```php
<?php
if (isset($_POST["bio"])) {
    $bio = $_POST["bio"];
    echo "Bio: $bio";
}
?>
```

#### Files transmission

Only `POST` method allowed here. In the example, the data is restricted to `*.pdf`.

html:
```html
...
<form action="script.php" method="post"> <!-- enctype is only used for file -->
    <input type="file" name="cover_letter" accept="application/pdf" enctype="multipart/form-data" required/> 
    <label for="cover_letter">Enter your cover letter</label>
    <input type="submit" value="send" />
</form>
...
```

php:
```php
<?php
if(issset($_FILES['cover_letter'])){
    echo "filename = ".$_FILES['nom']['name'];
    echo "filetype = ".$_FILES['nom']['type']; // ============= should be 'application/pdf' thanks to the form
    echo "file_size = ".$_FILES['nom']['size']."b"; // ======== file size (bytes)
    echo "temporary filename = ".$_FILES['nom']['tmp_name']; // upoload name can be different, 'tmp_name' returns the temporary filename
    echo "error = ".$_FILES['nom']['error']; // =============== should be 'UPLOAD_ERR_OK' (no errors)
}else echo 'error';
?>
```


# Connexion with PostgreSQL

PHP allows its users to interact easily with PostgreSQL. The `pg` library is very handy when it comes to database using. 

### Connexion function
It's a good practise to store connexion informations (login and password) in another file included in the php script.
here's how a connexion file would look like : 
```php
<?php
$_ENV['dbHost']   = 'IP_adress';
$_ENV['dbName']   = 'database_name';
$_ENV['dbUser']   = 'username';
$_ENV['dbPasswd'] = '********';

function connexion() {
    $dbHost    = $_ENV['dbHost'];
    $dbName    = $_ENV['dbName'];
    $dbUser    = $_ENV['dbUser'];
    $dbPasswd  = $_ENV['dbPasswd'];
    $strConnex = "host=$dbHost dbname=$dbName user=$dbUser password=$dbPasswd";
    $ptrDB = pg_connect($strConnex);
    return $ptrDB;
}
?>
```
### Query functions

Now that we have a connection function we can easily query out database. 

#### Insert function

Here is a traditional insert function

```php
<?php
// considering $str_array has this logic : ['key1', 'value1', ...]
function insert_db(array $str_array){
    $ptrDB = connexion();
    if($ptrDB == false) return;

    $query = "INSERT INTO my_table ($str_array[0], $str_array[2]...) VALUES ($str_array[1], $str_array[3]...);";
    
    $res = pg_query($ptrDB, $query);

    pg_free_result($res);
    pg_close($ptrDB);
}
?>
```

#### Select function
Here's an example of how we get data from postgreSQL using php

```php
<?php
function select_db(int $id){
    $ptrDB = connexion();
    if($ptrDB == false) return;

    $query = "SELECT * FROM my_table WHERE id = $id;";
    
    $res = pg_query($ptrDB, $query);

    $function_result = pg_fetch_all($res);

    pg_free_result($res);
    pg_close($ptrDB);

    return $function_result[0]; // index 0 because it's a double array
}
?>
```

Particular case : SELECT ALL : 
In the bellow example, we display all the informations about a particular table

```php
<?php
function display_table(string $table){
    $ptrDB = connexion();
    if($ptrDB == false) return;

    $query = "SELECT * FROM $table;";
    
    $res = pg_query($ptrDB, $query);

    $tablestr = pg_fetch_all($res);

    pg_free_result($res);
    pg_close($ptrDB);

    foreach($tablestr as $line){
        foreach($line as $col)
            echo $col."|";
        echo "\n";
    }
}
?>
```


#### Update function
Here's how we can update a sql line in a table from a database.
```php
<?php
function update_db(string $table, int $id, array $keys, array $new_val){
    // check arguments using isset, is_array...
    $ptrDB = connexion();
    if($ptrDB == false) return;

    $query = "UPDATE $table SET ($keys[0], $keys[1]...$keys[n]) = ($new_val[0], $new_val[1]...$new_val[n]) WHERE id = $id;";

    $res = pg_query($ptrDB, $query);

    pg_free_result($res);
    pg_close($ptrDB);
}
?>
```

#### Delete function
Here's how we can delete a line in a table of an existing database

```php
<?php
function delete_line($table, $id){

    $ptrDB = connexion();
    if($ptrDB == false) return;

    $query = "DELETE FROM $table WHERE id = $id;";

    $res = pg_query($ptrDB, $query);

    pg_free_result($res);
    pg_close($ptrDB);
}
?>
```

