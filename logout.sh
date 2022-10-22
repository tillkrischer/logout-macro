sudo iptables -I INPUT -p tcp --sport 6112 --tcp-flags PSH,ACK PSH,ACK -j REJECT --reject-with tcp-reset;
echo "logged out"
sleep 1;
sudo iptables -D INPUT -p tcp --sport 6112 --tcp-flags PSH,ACK PSH,ACK -j REJECT --reject-with tcp-reset;
