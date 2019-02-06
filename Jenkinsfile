pipeline {
agent none

stages {

stage('Calling Rundeck for Deployment'){
agent {
label "Slave-Node"
}
 steps { 
    script { 
      step([$class: "RundeckNotifier", 
            includeRundeckLogs: true, 
            jobId: "6a2480fd-002e-4842-a787-408bbe6f1fb4",
	    options: """
               Build_RD=$BUILD_NUMBER
               """, 
            rundeckInstance: "Rundeck Server", 
            shouldFailTheBuild: true, 
            shouldWaitForRundeckJob: true]) 
      } 
    } 
  }

}


}
