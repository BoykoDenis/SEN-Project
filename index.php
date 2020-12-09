<!DOCTYPE html>

<?php
    require("database_acces.php");

?>


<html>
    <head>
        <title>The Library</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <header>
            <img src = 'Logo2.png' id = "logo">
            <input type = 'text' id = "search">
            <button class = "headerbutton">
                Log in
            </button>
            <button class = "headerbutton">
                Sign up
            </button>
        </header>
        <div id = "main_div">
            <div class = "packs" id = "categories">
                <?php
                    $categories_sql = "SELECT "
                ?>
            </div>
            <div id = "main">
                blbosti
            </div>
            <div id = "adds">
                reklamy
            </div>
        </div>
    </body>
</html>