<?php
    session_start();
    include('inc/functions.php');
    include('inc/user.php');

    //Check Submit
    if(isset($_POST['signup'])){

        $formEmail = $_POST['email'];
        $formUser = $_POST['username'];
        $formPass = $_POST['password'];

        //Encrypt Password
        $hashedPassword = password_hash( "$formPass", PASSWORD_DEFAULT );

        //Create the object of the user class
        $user = new User;

        //Create User
        $user->create($formUser, $formEmail, $hashedPassword);
    }
    include('inc/header.php');
    include('views/signup.phtml');
    include('inc/footer.php'); 
?>