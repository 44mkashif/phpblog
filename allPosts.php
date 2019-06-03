<?php
    session_start();
    include('inc/postClass.php');

    $alertMessage = "";

    //Create Query
    $query = 'SELECT * FROM posts ORDER BY created_at DESC';

    $post = new Post;
    $posts = $post->readAllPosts($query);

    if( !$posts ) {
        $alertMessage = "<div class='alert alert-warning'>There aren't any posts to show!<button type='button' class='btn close'>
        <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
    }

    include('inc/header.php');
    include('views/allPosts.phtml');
    include('inc/footer.php');
?>