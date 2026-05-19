# mwg - vps to mikrotik
## 

## mwg1 - Wireguard Server     vmpico   10.13.14.1
## mwg2 - Wireguard Client     mikrotik1  10.13.14.2


# Generating Wiregiard keys
## Note: 'wg' installed is required to run 'keygen.sh'.
## Optional: Start Bash in WireGuard container 'docker exec -it twg1 bash';
## Run the script to generate keys 'bash ./keygen.sh';
## Copy/Past the keys from 'secret.txt' to the all 'wg0.conf' in each wg container;
## Remove the 'secret.txt' from the container;
## Start 'docker compose up -d'

