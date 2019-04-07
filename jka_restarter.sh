if ! screen -list | grep -q "jka_server1"; then
    screen -dmLS jka_server1 ./jka_start.sh
fi
