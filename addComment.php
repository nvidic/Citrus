<?php

    $name = $_GET['name'];
    $email = $_GET['email'];
    $comment = $_GET['comment'];

    // Connect to database
    $conn = mysqli_connect('localhost', 'user', 'user', 'Citrus');

    if (mysqli_connect_errno()) {
        die("Connection error: ".mysqli_connect_error());
    }

    // TODO: prepare query to avoid sql injection
        
    $query = "INSERT INTO `Comments`(`Name`, `Email`, `Comment`) VALUES ('$name', '$email', '$comment')";

    if ($conn->query($query) === true) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $query . "<br>" . $conn->error;
    }

    mysqli_close($conn);

?>