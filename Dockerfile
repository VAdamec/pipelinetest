docker.image('centos:6').inside {
 sh 'whoami'
 sh 'ls -la'
}
