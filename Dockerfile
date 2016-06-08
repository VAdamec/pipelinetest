node ('master'){
  stage 'Build'
  checkout scm
  sh 'uptime'
  
  stage 'Live'
  sh 'echo "promote Live"'
  docker.image('centos:6').inside {
    sh 'uname -a'
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
