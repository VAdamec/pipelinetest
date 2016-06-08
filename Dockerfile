docker.image('centos:6').inside {
 sh '/usr/bin/sudo yum install httpd -y'
 sh '/usr/bin/sudo /sbin/service httpd start'
 sh '/usr/bin/curl -v localhost:80'
}
