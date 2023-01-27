# PHP_learning

To *compile*, use the following commmand :<br />
`php -f my_php_code.php`


## how to write a function ?
```PHP
function function_name([$param_1, ..., $param_n = default_value]) [: return_type] {
	//  instructions
	[return $result;]
}
```

### how to comment ?
use `//` for one line or, `/*blabla*/` for multiple lines<br />

every variable is preceded by `$` there is no type for the variables and, no initialization is needed (same as python)<br />

a php file starts with `<?php` and ends with `>`

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

- terminal execution : `php -f my_php_code.php >> index.html`

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


# Error gestion

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

