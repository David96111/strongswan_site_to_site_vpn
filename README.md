on_premise_subnet: Segmento de red local que va a tener acceso a la red remota.
vpn_server_subnet: Segmento de red de la vpn al que puede acceder el cliente.
on_premise_ip: Ip publica de la red local.
vpn_server_ip: Ip publica de la vpn.

Notas: 
 - El on_premise_subnet no se debe traslapa con las ips de la red remota que ust quiere alcanzar.

# Setup Server

1. Modifique los archivos del folder config-server de acuerdo a su red.
2. Crear la imagen de docker.
    `docker build -t strong_vpn .`
3. Levantar el docker compose.
    `docker-compose -f docker-compose-server.yaml up -d`
4. Ingresar al docker
    `docker-compose -f docker-compose-server.yaml exec client bash`
5. Dentro del docker ejecute
    `sh scripts/start.sh`

# Setup client

1. Modifique los archivos del folder config-client de acuerdo a su red.
2. Crear la imagen de docker.
    `docker build -t strong_vpn .`
3. Levantar el docker compose.
    `docker-compose -f docker-compose-cliente.yaml up -d`
4. Ingresar al docker
    `docker-compose -f docker-compose-cliente.yaml exec client bash`
5. Dentro del docker ejecute
    `ipsec start`
