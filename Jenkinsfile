pipeline {
	agent any;

	stages {
		stage('Calling Rundeck for Deployment') {
			steps {
				echo 'hello world'
				echo ${env.WORKSPACE}
				echo '/var/lib/jenkins/jobs/${env.JOB_NAME}/branches/${env.BRANCH_NAME}/builds/${env.JOB_NUMBER}'
			}
		}
	
	stage('Build') {
		steps {
			archiveArtifacts artifacts: '**'
		}
	}

}
}
