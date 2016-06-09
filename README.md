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

## Docker playground with Puppet
* librarian used
* Centos6 with ruby2 and puppet - credits to Paul https://hub.docker.com/r/pauldavidgilligan/docker-centos6-puppet-ruby215/

```
      docker pull pauldavidgilligan/docker-centos6-puppet-ruby215
      docker build -t="centos6-puppetted" ./
      docker run -P -d -p 127.0.0.1:8081:80 --name DocPupNginx -t centos6-puppetted
```

## Structure

```
      ..
      provision/
        simple.sh # kiss provisioner
      spec/
        localhosts/
          sample_spec.rb # sample serverspec HTTP test
      Jenkinsfile
      DemoPipeline
      Dockerfile # example of build and run puppetized docker
```

# Credits
* https://documentation.cloudbees.com/docs/cje-user-guide/docker-workflow-sect-inside.html
* http://serverspec.org/
* http://www.infrabricks.de/blog/2014/09/10/docker-container-mit-serverspec-testen/
* http://www.focusedsupport.com/blog/beyond-builds-combining-jenkins-and-docker-for-continuously-running-instances/
