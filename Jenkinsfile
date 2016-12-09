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
  parallel (
     "testsuite 1" : {   build job: 'Second', quietPeriod: 30  },
     "testsuite 2" : {   build job: 'Third', quietPeriod: 30 }
   )
  
  timeout(time: 300, unit: 'SECONDS') {
    input message: 'Waiting for approve', ok: 'Approve'
    stage 'Stable'
    sh 'echo "promote Stable" | tee -a result.txt'
    archive includes: '*.txt'
  }
 }
