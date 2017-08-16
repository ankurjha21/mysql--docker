FROM centos:centos7

RUN groupadd -r mysql && useradd -r -g mysql mysql
RUN yum install -y mysql-server 
RUN yum install update -y
ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/var/lib/mysql"]
CMD ["/usr/local/bin/run"]
EXPOSE 3306
