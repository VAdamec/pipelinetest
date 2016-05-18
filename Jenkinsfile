node ('master'){
  stage 'Build'
  checkout scm
  sh 'uptime'
  
  stage 'Test'
  build job: 'Second', quietPeriod: 30
  
  stage 'Unstable'
  sh 'echo "promote Unstable"'
  
  stage 'Testing'
  sh 'echo "promote Testing"'

  timeout(time: 300, unit: 'SECONDS') {
    stage 'Stable'
    sh 'echo "promote Stable"'
    sh 'sleep 301'
  }
 }
