# twg
## Joining Docker networks on remote servers into vpn

## twg1 - Wireguard Server     ruvds   10.13.13.11
## twg2 - Wireguard Client     vmpico  10.13.13.12
## twg3 - Wireguard Client     mac     10.13.13.13
## twg4 - Wireguard Client     acer   10.13.13.14

# Generating Wiregiard keys
## Note: 'wg' installed is required to run 'keygen.sh'.
## Optional: Start Bash in WireGuard container 'docker exec -it twg1 bash';
## Run the script to generate keys 'bash ./keygen.sh';
## Copy/Past the keys from 'secret.txt' to the all 'wg0.conf' in each wg container;
## Remove the 'secret.txt' from the container;

