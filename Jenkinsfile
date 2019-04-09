pipeline {
	agent any;

	stages {
		stage('Calling Rundeck for Deployment') {
			steps {
				echo 'hello world'
				echo "/var/lib/jenkins/jobs/${env.JOB_NAME}/branches/${env.BRANCH_NAME}/builds/${env.BUILD_NUMBER}"
				sh './name.sh'
}

}
	stage ('Creating atificats'){
		steps {
			archiveArtifacts artifacts: '**', onlyIfSuccessful: true
			echo "${env.ARTIFACT_URL}"
}
}
}
}
