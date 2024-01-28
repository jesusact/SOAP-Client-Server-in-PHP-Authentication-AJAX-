<?php
include 'client.php';

try {
    if (isset($_GET['marca'])) {
        $marca = $_GET['marca'];
        $modelos = $client->ObtenerModelosPorMarca($marca);

        echo "<h1>Modelos disponibles para marca: ".$marca."</h1>";
        echo "<figure>";
        foreach ($modelos as $modelo) {
            echo "<img src='images/".strtolower($marca).".png' width='100px' alt='logo ".$marca."'>";
            echo "<figcaption style='background-color: blue; color: white'>$modelo</figcaption>";
            echo "<hr>";
        }
        echo "</figure>";
    } else {
        echo "Error: El parámetro 'marca' no está presente en la solicitud.";
    }
} catch (Exception $e) {
    echo "Error al obtener los modelos: " . $e->getMessage();

}




