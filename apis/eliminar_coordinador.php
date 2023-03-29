<?php
if($_SERVER["REQUEST_METHOD"]=="DELETE"){
    require_once 'conexion.php';
    $idC = $_GET["idC"];
    $my_query = "DELETE FROM coordinador where idC = $idC";
    $result = $con -> query($my_query);
    if ($result == true){
        echo "Todo bien";
    }else{
        echo "todo mal";
    }
}
?>