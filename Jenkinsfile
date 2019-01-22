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

<<<<<<< HEAD
stage('Calling Rundeck for Deployment'){
agent {
label "Slave-Node"
}
 steps { 
    script { 
      step([$class: "RundeckNotifier", 
            includeRundeckLogs: true, 
            jobId: "6a2480fd-002e-4842-a787-408bbe6f1fb4", 
            rundeckInstance: "Rundeck-Node", 
            shouldFailTheBuild: true, 
            shouldWaitForRundeckJob: true, 
            tailLog: true]) 
      } 
    } 
  }

}


}


=======
}

}
>>>>>>> 18eeaceca60b826580497c37a93a4be1c8e16458
