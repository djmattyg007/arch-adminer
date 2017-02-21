FROM djmattyg007/arch-phpfpm:2017.02.13-1
MAINTAINER djmattyg007

ENV ADMINERIMAGE_VERSION=2017.02.21-2

# Add install bash script
COPY setup/root/*.sh /root/
COPY setup/init-dhcpcd.sh /etc/service/dhcpcd/run

ENV ADMINER_VERSION=4.2.5-patch4

# Run bash script to install additional PHP packages, dhcpcd, and download adminer
RUN /root/install.sh && \
    rm /root/*.sh

ENTRYPOINT ["/usr/bin/init"]
