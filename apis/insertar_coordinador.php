<?php
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        require_once "conexion.php";  

        $nombres = $_POST["nombres"];
        $apellidos = $_POST["apellidos"];
        $fechaNac = $_POST["fechaNac"];
        $titulo = $_POST["titulo"];
        $email = $_POST["email"];
        $facultad = $_POST["facultad"];

        $my_query = "INSERT INTO coordinador(nombres, apellidos, fechaNac, titulo, email, facultad) 
         VALUES ('" . $nombres . "', '" . $apellidos . "', '" . $fechaNac . "', '" . $titulo . "',  '" . $email . "',  '" . $facultad . "')";


        
        $result = $con->query($my_query); // ejecutar query
        if($result == true){
            echo "Registro guardado correctamente";
        }else{
            echo "Error al guardar registro";
        }
    }else{
        echo "error desconocido";
    }
?>
