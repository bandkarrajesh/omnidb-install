FROM centos:7

RUN yum -y install wget && wget https://github.com/OmniDB/OmniDB/releases/download/3.0.3b/omnidb-server-3.0.3b_linux_x86_64.rpm \
 && yum -y localinstall omnidb-server-3.0.3b_linux_x86_64.rpm

EXPOSE 8080

ENTRYPOINT ["/usr/bin/omnidb-server", "-p","8080","-H","0.0.0.0"]
