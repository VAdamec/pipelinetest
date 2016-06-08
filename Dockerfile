node ('master'){
  stage 'Build'
  checkout scm
  sh 'uptime'
  
  stage 'Live'
  sh 'echo "promote Live"'
  
  withDockerContainer('centos:6') {
    sh 'cat /etc/redhat-release'
  }

  stage 'Unstable'
  sh 'echo "promote Unstable"'
  
  stage 'Testing'
  sh 'echo "promote Testing"'

  timeout(time: 300, unit: 'SECONDS') {
    input message: 'Waiting for approve', ok: 'Approve'
    stage 'Stable'
    sh 'echo "promote Stable"'
  }

}
