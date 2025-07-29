echo "Aplicando regras de firewall..."

# Limpa regras anteriores
iptables -F

# Política padrão: bloquear tudo
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Permitir loopback (localhost)
iptables -A INPUT -i lo -j ACCEPT

# Permitir conexões já estabelecidas
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Permitir acesso à porta 80 (HTTP)
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Permitir ping
iptables -A INPUT -p icmp -j ACCEPT

# Mostra as regras aplicadas
iptables -L -v

echo "Regras aplicadas!"



# echo "Aplicando regras de firewall..."

# iptables -F

# iptables -P INPUT DROP
# iptables -P FORWARD DROP
# iptables -P OUTPUT ACCEPT

# iptables -A INPUT -i lo -j ACCEPT

# iptables -A INPUT -m state --state ESTABILISHED,RELATED -j ACCEPT

# iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# iptables -A INPUT -p icmp -j ACCEPT

# iptables -L -v

# echo "Regras aplicadas!"




# iptables -A OUTPUT -p icmp -j DROP

# iptables -A INPUT -p tcp --dport 22 -j DROP

# iptables -L