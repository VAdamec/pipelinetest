docker.image('centos7').inside {
 yum install httpd -y
 /sbin/service httpd start
 curl -v localhost:80
}
