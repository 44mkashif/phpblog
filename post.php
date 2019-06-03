<?php
    session_start();
    include('inc/functions.php');
    include('inc/comment.php');

    $alertMessage = NULL;
    $emptyComments = NULL;
    $alertComent = NULL;

    //Get id from query string
    $id = validateFormData( $_GET['id'] );

    //Fetch post
    $post1 = new Post;
    $post = $post1->read($id);
    if( !$post ) {
        $emptyMessage = "<div class='alert alert-info'>This post is empty<button type='button' class='btn close'>
        <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
    }

    //Check for Delete
    if(isset($_POST['delete'])){
        $delete_id = validateFormData( $_POST['delete_id']);

        $post1->delete( $delete_id );
    }

    // Check for addComment
    if( isset( $_POST['addComment'] ) ) {
        $message    = validateFormData( $_POST['message'] );
        $username   = validateFormData( $_POST['username'] );
        $userId     = validateFormData( $_POST['userId'] );
        $postId     = validateFormData( $_POST['postId'] );

        $comment1 = new Comment;
        $comment1->create( $message, $username, $userId, $postId );
    }

    if( isset( $_GET['alert'] ) ) {
        if( $_GET['alert'] == 'success' ) {
            $alertMessage = "<div class='alert alert-success'>Post Edited Successfully!<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        } elseif ( $_GET['alert'] == 'commentAdded' ) {
            $alertComent = "<div class='alert alert-success'>Comment Added<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        } elseif( $_GET['alert'] == 'accessDenied') {
                $alertMessage = "<div class='alert alert-warning'>Only the author of the post can edit or delete the post!<button type='button' class='btn close'>
                <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
        }
    }

    //Fetch all Comments

    $comment2 = new Comment;
    $comments = $comment2->read( $id );
    if( !$comments ) {
            $emptyComments = "<div class='alert alert-info'>This post don't have any comments<button type='button' class='btn close'>
            <span data-dismiss='alert' aria-hidden='true'>&times;</span></button></div>";
    }
    include('inc/header.php');
    include('views/post.phtml');
    include('inc/footer.php'); 
?>