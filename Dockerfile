FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y git build-essential make net-tools iproute2 iptables

RUN perl -MCPAN -e 'CPAN::Shell->rematein("notest", "install", "Module::Build")'
RUN perl -MCPAN -e 'CPAN::Shell->rematein("notest", "install", "Net::Netmask")'

RUN git clone https://github.com/lstein/Net-ISP-Balance.git

RUN cd /Net-ISP-Balance && \
    perl ./Build.PL && \
    ./Build installdeps && \
    ./Build test && \
    ./Build install

COPY balance.conf /etc/network/balance.conf
COPY script/balance.sh /balance.sh

CMD ["/balance.sh"]
