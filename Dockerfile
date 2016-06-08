docker.image('centos:6').inside {
 sh 'sudo yum install httpd -y'
 sh 'sudo /sbin/service httpd start'
 sh 'curl -v localhost:80'
}
