# PHP_learning

To *compile*, use the following commmand :<br />
`php -f my_php_code.php`


## how to write a function ?
```
function function_name([$param_1, ..., $param_n]) [: return_type] {
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

##constant variables

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
    ```
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
```
for($i=0;$i<sizeof($tab);$i++) {
    echo("valeur:$tab[$i]\n");
}
for ($i = 1; $i <= 10; print $i, $i++);
```
- if : 
```
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
```
foreach($assoc as $key => $val) {
    echo "$key : $val\n";
}
```
- while same as C
- do while same as C

## create HTML code

create a variable to hold the HTML code (string), then echo this code. finally compile and then push the output into a file
- file
```
<?php
$HTML_code = '<html>...'
$HTML_code .= '...</html>'  //.= concatenates a string
echo $HTML_code
>
```

- terminal execution : `php -f my_php_code.php >> index.html`