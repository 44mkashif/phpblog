<?php
    session_start();
    include('inc/functions.php');
    include('inc/user.php');

    //If user is logged in 
    if( $_SESSION ) {
        //redirect to home page
        header('Location: index.php');
    }

    if( isset( $_POST['login'])){

        $formEmail = validateFormData( $_POST['email']);
        $formPass = validateFormData( $_POST['password']);

        $user = new User;

        $result = $user->read($formEmail);

        if( $result != false ) {

            //Verify hashed password with the submitted password
            if( password_verify($formPass, $result['password']) ) {
                //Correct login details
                //Store data in session variables
                $_SESSION['loggedInUser'] = $result['username'];
                $_SESSION['loggedInEmail'] = $result['email'];
                $_SESSION['loggedInId'] = $result['id'];

                //redirect user to home page
                header('Location: index.php');
            }

            else {
                //Incorrect login details
                $loginError = "<div class='alert alert-danger'>Wrong Password. Please Try Again!</div>";
            }

        } else {
            $loginError = "<div class='alert alert-danger'>No such user in database. Please Try Again! <button type='button' class='close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        }
    }

    //Check for query string
    //If account created successfully
    if( isset($_GET['alert'] ) ) {
        if( $_GET['alert'] == 'accountCreated' ) {
            $alertMessage = "<div class='alert alert-success'>Congratulations! Account created Successfully!<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        } elseif( $_GET['alert'] == 'login' ) {
            $alertMessage = "<div class='alert alert-info'>Login first to create the post!<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        } elseif( $_GET['alert'] == 'loginPost' ) {
            $alertMessage = "<div class='alert alert-info'>Login first to view your posts!<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        }
    }
    
    include('inc/header.php');
    include('views/login.phtml');
    include('inc/footer.php'); 
?>