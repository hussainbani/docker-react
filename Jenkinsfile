pipeline {
	agent any;

	stages {
		stage('Calling Rundeck for Deployment') {
			steps {
				echo 'hello world'
				echo "/var/lib/jenkins/jobs/${env.JOB_BASE_NAME}/branches/${env.BRANCH_NAME}/builds/${env.BUILD_NUMBER}"
			}
		}
	
	stage('Build') {
		steps {
			archiveArtifacts artifacts: '**'
		}
	}

}
}
