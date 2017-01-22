<?php

    $con = mysqli_connect("localhost", "root", "", "ecommerce");

    mysqli_query($con,'SET CHARACTER SET utf8');

    mysqli_query($con,'SET SESSION collation_connection ="utf8_general_ci"');

    /* check connection */
    if (mysqli_connect_errno()) {
        printf("Connect failed: %s\n", mysqli_connect_error());
        exit();
    }
    else {
        //printf("Connected...");
    }
?>