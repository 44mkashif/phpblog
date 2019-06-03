<?php
    include('db.php');

    class User extends Db {
        public $username = "";
        public $email = "";
        public $password = "";

        // public function __construct($username, $email, $password) {
        //     $this->username = $username;
        //     $this->email = $email;
        //     $this->password = $password;
        // }

        public function create($formUser, $formEmail, $hashedPassword){

            $this->username = $formUser;
            $this->email = $formEmail;
            $this->password = $hashedPassword;

            //Create Query
            $query = "INSERT INTO users (email, username, password) VALUES ('$this->email', '$this->username', '$this->password');";

            //Store the result
            $result = $this->connect()->query($query);

            if( $result ) {
                // echo $this->username . " " . $this->email . " " . $this->password;
                header( 'Location: login.php?alert=accountCreated' );
            } else {
                echo "<div class='alert alert-danger'>ERROR:".$mysqli->error;"</div>";
            }
        }

        public function read($formEmail){
            //Create Query
            $query = "SELECT username, password, id FROM users WHERE email = '$formEmail';";

            //Store the result
            $result = $this->connect()->query($query);

            //Verify if result is returned
            $numRows = $result->num_rows;
            if( $numRows > 0) {
                while ( $row = $result->fetch_assoc() ) {
                    $data['username'] = $row['username'];
                    $data['id'] = $row['id'];
                    $data['password'] = $row['password'];
                }
                return $data;
            }   else {
                //User not found
                return false;
            }
        }
    }