<!DOCTYPE html>

<?php
    session_start();
    if (isset($_POST['login']))
    {
        require("database_acces.php");
        $username = $_POST['Username'];
        $password = $_POST['password'];
    $sql = "SELECT * FROM users WHERE Username='{$username}' AND password='{$password}'";
    echo $sql;
    $result = $mysqli->query($sql);
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