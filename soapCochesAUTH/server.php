<?php

class server {
    private $con;
    private $IsAuthenticated;

    public function __construct() {
        $this->con = (is_null($this->con)) ? self::connect() : $this->con;
        $this->IsAuthenticated = false;
    }

    static function connect() {
        try {
            $user = "root";
            $pass = "";
            $dbname = "coches";
            $host = "localhost";

            $con = new PDO("mysql:host=$host; dbname=$dbname", $user, $pass);
            $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $con;
        } catch (PDOException $e) {
            print "<p>Error: " . $e->getMessage() . "</p>\n";
            return null;
        }
    }

    public function ObtenerMarcasUrl() {
        $marcas = array();

        try {
            $consulta = "SELECT marca, url FROM marcas";
            $stmt = $this->con->prepare($consulta);
            $stmt->execute();

            while ($fila = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $marca = $fila['marca'];
                $url = $fila['url'];
                $marcas[$marca] = $url;
            }

        } catch (PDOException $e) {
            echo "Error en la consulta: " . $e->getMessage();
        }

        return $marcas;
    }

    public function ObtenerModelosPorMarca($marca) {
        $stmt = $this->con->prepare('SELECT modelo FROM modelos WHERE marca = (SELECT id FROM marcas WHERE marca = :marca)');
        $stmt->bindParam(':marca', $marca, PDO::PARAM_STR);
        $stmt->execute();
        $modelos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return array_column($modelos, 'modelo');
    }

    public static function authenticate($header_params) {
        if ($header_params->username == 'ies' && $header_params->password == 'daw') {
            return true;
        } else {
            throw new SoapFault('Wrong user/pass combination', 401);
        }
    }
}

$params = array('uri' => 'http://localhost/soapCochesAUTH/');
$server = new SoapServer(null, $params);
$server->setClass('server');
$server->handle();

