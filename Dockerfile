FROM djmattyg007/arch-phpfpm:2017.01.15-4
MAINTAINER djmattyg007

ENV ADMINERIMAGE_VERSION=2017.01.15-1

# Add install bash script
COPY setup/root/*.sh /root/
COPY setup/init-dhcpcd.sh /etc/service/dhcpcd/run

ENV ADMINER_VERSION=4.2.5-patch2

# Run bash script to install additional PHP packages, dhcpcd, and download adminer
RUN /root/install.sh && \
    rm /root/*.sh

ENTRYPOINT ["/usr/bin/init"]
