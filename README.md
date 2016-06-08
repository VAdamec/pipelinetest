# Jenkins2 pipelines simple demos

## Simple steps
* File: Jenkinsfile
 * goes through promotion steps and wait for approve for production

## Pipeline with Docker
* File: DemoPipeline
 * run commands inside Docker (serverspec tests)
 * for simplicity we use prebuilded centos6 with ruby2 (docker hub - volanja/docker-ruby2.2.0)
* set simple provision from attached volume (jenkins workspace mount to /code)
 * just install and start Apache
* run serverspec tests (sample from http://serverspec.org/)

## Structure

      ..
      provision/
        simple.sh # kiss provisioner
      spec/
        localhosts/
          sample_spec.rb # sample serverspec HTTP test
      Jenkinsfile
      DemoPipeline

# Credits
* https://documentation.cloudbees.com/docs/cje-user-guide/docker-workflow-sect-inside.html
* http://serverspec.org/
* http://www.infrabricks.de/blog/2014/09/10/docker-container-mit-serverspec-testen/
* http://www.focusedsupport.com/blog/beyond-builds-combining-jenkins-and-docker-for-continuously-running-instances/
