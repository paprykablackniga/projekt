<?php

    $connect = mysqli_connect("localhost", "root", "", "barcelona");
    $query = "SELECT names,surname,img,note FROM footballers";
    $result = mysqli_query($connect, $query);

    $response = []; 

    if($result) {

        while($row = mysqli_fetch_assoc($result)) {

            $response[] = array($row['names'], $row['surname'] , $row['img'], $row['note']);
        }
    }

    echo json_encode($response);

    mysqli_close($connect);

?>