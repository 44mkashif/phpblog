<?php
    session_start();
    include('inc/postClass.php');
    $alertMessage = NULL;
    $emptyMessage = NULL;

    if( $_SESSION['loggedInUser'] == NULL ) {
        header('Location: login.php?alert=loginPost');
    }

    $userId = $_SESSION['loggedInId'];
    //Create Query
    $query = "SELECT * FROM posts WHERE userid = '$userId' ORDER BY created_at DESC";
    
    $post = new Post;
    $posts = $post->readAllPosts($query);
    if( !$posts ) {
        $emptyMessage = "<div class='alert alert-warning'>You don't have any posts!<button type='button' class='btn close'>
        <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
    }

    if( isset( $_GET['alert'] ) ) {
        if( $_GET['alert'] == 'postCreated' ) {
            $alertMessage = "<div class='alert alert-success'>Post created successfully!<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        } elseif( $_GET['alert'] == 'postDeleted' ) {
            $alertMessage = "<div class='alert alert-warning'>Post deleted successfully!<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        }
    }

    include('inc/header.php');
    include('views/myPosts.phtml');
    include('inc/footer.php');
?>