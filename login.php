<!DOCTYPE html>

<?php
    session_start();
    require("database_acces.php");
    if (isset($_POST['login']) and isset($_POST['pass']) and isset($_POST['Username']))
    {
        require("database_acces.php");
        $username = $_POST['Username'];
        $password = $_POST['pass'];
    $sql = "SELECT * FROM users WHERE Username='{$username}' AND password='{$password}'";
    echo $sql;
    $result = $con->query($sql);
    if (mysqli_num_rows($result)>0)
    {
        $_SESSION['Username']=$username;
        header("location: index.php");
    }
    }

?>

<form method = "post" action = "<?php echo $_SERVER['PHP_SELF']; ?>">
    <p>Username:
    <input name = "Username" type = "text">
    <p>Password:
    <input name = "pass" type = "password"></p>
    <p>
    <input type = "submit" name = "login" value="Log in">
    </p>
</form>
