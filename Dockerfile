docker.image('centos:6').inside {
  stage 'Live'
  sh 'echo "promote Live"'

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
