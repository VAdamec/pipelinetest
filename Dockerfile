node ('master'){
  stage 'Build'
  checkout scm
  sh 'uptime'

  stage 'Live'
  sh 'echo "promote Live"'

  withDockerContainer('centos:7') {
    sh 'cat /etc/redhat-release'
    sh 'df -h'
    sh 'sudo gem install serverspec'
    sh 'rake spec'
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
