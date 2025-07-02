FROM ubuntu:24.04

RUN apt update && \
    apt install -y iptables iproute2 net-tools && \
    apt clean

COPY iptables-setup.sh /iptables-setup.sh
RUN chmod +x /iptables-setup.sh
CMD ["/bin/bash", "/iptables-setup.sh"]

CMD ["bash"]