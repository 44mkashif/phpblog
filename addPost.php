<?php
    session_start();
    include('inc/functions.php');
    include('inc/postClass.php');

    if( $_SESSION['loggedInUser'] == NULL ) {
        header('Location: login.php?alert=login');
    }

    //Check for Submit
    if(isset($_POST['submit'])){
        $title = validateFormData( $_POST['title'] );
        $body = validateFormData( $_POST['body'] );
        $author = validateFormData( $_POST['author'] );
        $userId = validateFormData( $_POST['userId'] );

        $post = new Post;

        $post->create($title, $body, $author, $userId);
    }

    include('inc/header.php');
    include('views/addPost.phtml');
    include('inc/footer.php');
?>