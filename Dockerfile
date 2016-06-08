docker.image('centos:6').inside {
 sh 'yum install httpd -y'
 sh '/sbin/service httpd start'
 sh 'curl -v localhost:80'
}
