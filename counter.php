<?php

if(isset($_POST['search'])){
    $search = $_POST['search'];
  

    


   

    $connect = mysqli_connect("localhost","root","","barcelona");
    $query = "select names , surname from footballers where names like ('$search%')";
    $result = mysqli_query($connect,$query);
    if($search = ""){
        echo "brak zawodnika";

     }else{


    $response = "";

    if($result){
        while ($row = mysqli_fetch_assoc($result)) {
             $response .= "<div class='lista'>{$row['names']} {$row['surname']}</div>";
        }
   
        echo json_encode($response);
    }
    else{
        echo "Błąd zapytania";
    }

    
    }

   
}


?>