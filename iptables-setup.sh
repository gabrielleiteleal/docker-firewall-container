iptables -F

iptables -A OUTPUT -p icmp -j DROP

iptables -A INPUT -p tcp --dport 22 -j DROP

iptables -L