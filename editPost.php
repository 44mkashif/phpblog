<?php
    session_start();

    include('inc/postClass.php');
    include('inc/functions.php');

    //Get id from query string
    $id = validateFormData( $_GET['id']);

    $post1 = new Post;
    $post = $post1->read( $id );
    if( !$post ) {
        $emptyMessage = "<div class='alert alert-info'>This post is empty<button type='button' class='btn close'>
        <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
    }

    $userId = $post['userId'];

    if( $_SESSION['loggedInId'] != $userId ) {
        header('Location: post.php?id='.$id.'&alert=accessDenied');
    }

    //Check for Submit
    if(isset($_POST['submit'])){
        $update_id = validateFormData( $_POST['update_id']);
        $title = validateFormData( $_POST['title']);
        $body = validateFormData( $_POST['body']);
        $author = validateFormData( $_POST['author']);

        $post1->update( $update_id, $title, $body, $author );

    }

    include('inc/header.php');
    include('views/editPost.phtml');
    include('inc/footer.php'); 
?>