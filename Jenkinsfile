pipeline {
	agent any;

	stages {
		stage('Calling Rundeck for Deployment') {
			steps {
				echo 'hello world'
				echo $WORKSPACE
				echo '/var/lib/jenkins/jobs/$JOB_NAME/branches/$BRANCH_NAME/builds/$JOB_NUMBER'
			}
		}
	
	stage('Build') {
		steps {
			archiveArtifacts artifacts: '**'
		}
	}

}
}
