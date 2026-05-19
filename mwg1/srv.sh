while true; do echo -e "HTTP/1.1 200 OK\n\n GAMEOVER" | nc -l -w 1 8085; done
