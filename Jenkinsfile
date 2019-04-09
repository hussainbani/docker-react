pipeline {
	agent any;

	stages {
		stage('Calling Rundeck for Deployment') {
			steps {
				echo 'hello world'
				echo "/var/lib/jenkins/jobs/${env.JOB_NAME}/branches/${env.BRANCH_NAME}/builds/${env.BUILD_NUMBER}"
				
				sh """
				echo /var/lib/jenkins/jobs/${echo ${env.JOB_NAME} | awk -F [:/] '{ print \$1 }'}/branches/${env.BRANCH_NAME}/builds/${env.BUILD_NUMBER}

				"""
				
}

		}

}
}
