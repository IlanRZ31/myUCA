<?php 
if ($_SERVER["REQUEST_METHOD"] == "GET"){
    require_once 'conexion.php';
    $my_query = "SELECT * FROM Coordinador WHERE titulo NOT LIKE '%MSc%';";
    $result = $con->query($my_query);
    if ($con -> affected_rows > 0){
        $json = "[";
        while ($row = $result->fetch_assoc()) {
            $json = $json.json_encode($row);
            $json=$json.",";
        }
        $json = substr(trim($json),0,-1);
        $json=$json."]";
    }
}

echo $json;
$result->close();
$con->close();


?>