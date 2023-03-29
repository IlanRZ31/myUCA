<?php
if ($_SERVER["REQUEST_METHOD"] == "PUT") {
    require_once 'conexion.php';
    parse_str(file_get_contents("php://input"), $put_vars);
    $idC = $put_vars["idC"];
    $nombres = $put_vars["nombres"];
    $apellidos = $put_vars["apellidos"];
    $fechaNac = $put_vars["fechaNac"];
    $titulo = $put_vars["titulo"];
    $email = $put_vars["email"];
    $facultad = $put_vars["facultad"];

    $my_query = "UPDATE coordinador SET nombres='$nombres', apellidos='$apellidos', fechaNac='$fechaNac', titulo='$titulo', email='$email', facultad='$facultad' WHERE idC=$idC";

    $result = $con->query($my_query);
    if ($result == true) {
        echo "Registro actualizado correctamente";
    } else {
        echo "Error al actualizar registro";
    }
}
?>