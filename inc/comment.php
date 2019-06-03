<?php
    include('inc/postClass.php');

    class Comment extends Db{

        public function create($formMessage, $formUsername, $formUserId, $formPostId) {
            
            //Create query
            $query = "INSERT INTO comments (comment, userId, postId, username) VALUES ('$formMessage', '$formUserId', '$formPostId', '$formUsername')";
            
            $result = $this->connect()->query($query);

            if( $result ) {
                header('Location: post.php?id='.$formPostId.'&alert=commentAdded');
            } else {
                echo "<div class='alert alert-danger'>ERROR:".$mysqli->error;"</div>";
            }
        }

        public function read($id) {
            // Create query
            $query = "SELECT * FROM comments where postId ='$id' ORDER BY created_at";

            $result = $this->connect()->query( $query );

            $numRows = $result->num_rows;

            if( $numRows > 0 ) {
                while( $rows = $result->fetch_all( MYSQLI_ASSOC ) ) {
                    $comments = $rows;
                }
                return $comments;
            } else {
                //Comments not found
                return false;
            }
        }
    }