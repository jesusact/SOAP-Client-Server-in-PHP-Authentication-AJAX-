<?php
class Client {
    private $instance;
    public function __construct() {
        $params = array('location' => 'http://localhost/soapCochesAUTH/server.php',
            'uri' => 'http://localhost/soapCochesAUTH/',
            'trace' => 1);
        $this->instance = new SoapClient(null, $params);

        $auth_params = new stdClass();
        $auth_params->username = 'ies';
        $auth_params->password = 'daw';

        $header_params = new SoapVar($auth_params, SOAP_ENC_OBJECT);
        $header = new SoapHeader('http://localhost/soapCochesAUTH/server.php', 'authenticate', $header_params, false);
        $this->instance->__setSoapHeaders(array($header));
    }

    public function ObtenerMarcasUrl() {
        return $this->instance->__soapCall('ObtenerMarcasUrl', []);
    }

    public function ObtenerModelosPorMarca($marca) {
        return $this->instance->__soapCall('ObtenerModelosPorMarca', array($marca));
    }

}

$client = new client();

