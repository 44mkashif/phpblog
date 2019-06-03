<?php
    session_start();
    include('inc/header.php');

    if(isset($_COOKIE[session_name()])){
        setcookie( session_name(), '', time()-86400, '/' );
    }

    //destroy the session
    session_destroy();

    include('views/logout.phtml');
    include('inc/footer.php');
?>