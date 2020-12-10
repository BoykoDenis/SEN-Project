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
                    $categories_sql = "SELECT GenreID, GenreName FROM genres";
                    $result = $con->query($categories_sql);
                    while ($row = $result->fetch_assoc())
                    {
                        echo "<div class = 'category'>".$row['GenreName']."</div>";
                    }
                ?>
            </div>
            <div id = "main">
                <div class = "main_header" id = "recomended">
                </div>
                <div class = "main_header" id = "top">
                </div>
                <div class = "main_header" id = "placeholder">
                </div>
                <div class = "main_header" id = "sortby">
                </div>
                    <?php
                            $sugg_books_sql = "SELECT BookID, Bookname FROM books LIMIT 5";
                            $result = $con->query($sugg_books_sql);
                            while ($row = $result->fetch_assoc())
                            {
                                echo '<div class = "suggestions">'.$row['Bookname'].'</div>';
                            }
                    ?>

                </div>
            <div id = "adds">
                reklamy
            </div>
        </div>
    </body>
</html>