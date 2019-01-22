pipeline {
agent none

stages {


stage('Docker Deployment'){
agent {
label "Slave-Node"
}

steps
{
ansiblePlaybook(
playbook: 'test.yml',
inventory: '/etc/ansible/hosts'
)
}
}

stage('Calling Rundeck for Deployment'){
agent {
label "Slave-Node"
}
 steps { 
    script { 
      step([$class: "RundeckNotifier", 
            includeRundeckLogs: true, 
            jobId: "6a2480fd-002e-4842-a787-408bbe6f1fb4", 
            rundeckInstance: "Rundeck Server", 
            shouldFailTheBuild: true, 
            shouldWaitForRundeckJob: true]) 
      } 
    } 
  }

}


}
