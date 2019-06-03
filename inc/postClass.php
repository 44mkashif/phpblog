<?php
    include('db.php');

    class Post extends Db{

        public function create($formTitle, $formBody, $formAuthor, $formUserId){
            //Create Query
            $query = "INSERT INTO posts(title, author, body, userId) VALUES ('$formTitle', '$formAuthor', '$formBody', '$formUserId');";

            //Store the result
            $result = $this->connect()->query($query);

            if( $result ) {
                header('Location: myPosts.php?alert=postCreated');
            } else {
                echo "<div class='alert alert-danger'>ERROR:".$mysqli->error;"</div>";
            }
        }

        public function read( $id ) {

            //Create Query
            $query = 'SELECT * FROM posts WHERE id = '.$id;
            
            $result = $this->connect()->query($query);

            $numRows = $result->num_rows;

            if( $numRows > 0 ) {
                while( $rows = $result->fetch_assoc() ) {
                    $posts = $rows;
                }
                return $posts;
            } else {
                //Posts not found
                return false;
            }
        }

        public function readAllPosts($query) {
            
            $result = $this->connect()->query($query);

            $numRows = $result->num_rows;

            if( $numRows > 0 ) {
                while( $rows = $result->fetch_all(MYSQLI_ASSOC) ) {
                    $posts = $rows;
                }
                return $posts;
            } else {
                //Posts not found
                return false;
            }
        }

        public function update($formUpdate_id, $formTitle, $formBody, $formAuthor) {

            //Create Query
            $query = "UPDATE posts SET title = '$formTitle', author = '$formAuthor', body = '$formBody' WHERE id = ".$formUpdate_id;

            $result = $this->connect()->query( $query );

            if( $result ) {
                header('Location: post.php?id='.$formUpdate_id.'&alert=success');
            } else {
                echo "<div class='alert alert-danger'>ERROR:". $mysqli->error;"</div>";
            }
        }

        public function delete( $delete_id ) {
            $query = 'DELETE FROM posts WHERE id = '.$delete_id;

            $result = $this->connect()->query( $query );

            if( $result ) {
                header('Location: myPosts.php?alert=postDeleted');
            } else {
                echo "<div class='alert alert-danger'>ERROR:". $mysqli->error;"</div>";
            }
        }
    }