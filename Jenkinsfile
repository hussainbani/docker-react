pipeline {
	agent any;

	stages {

		stage('Calling Rundeck for Deployment') {
			steps {
				echo "${env.WORKSPACE}"
				echo "/var/lib/jenkins/jobs/${env.JOB_NAME}/branches/${env.BRANCH_NAME}/builds/${env.BUILD_NUMBER}"
				sh './name.sh'
}

}

	stage('Creating atificats'){	
	steps {	
			load "${env.WORKSPACE}/project.properties"							
			archiveArtifacts artifacts: '**', onlyIfSuccessful: true
			echo "${ARTIFACT_URL}"
}

}
    
        stage('Deployment Through Ansible') {
            steps {
			load "${env.WORKSPACE}/project.properties"
			echo "${ARTIFACT_URL}"
			ansiblePlaybook(
						playbook: 'deploy.yml',
						inventory: '/etc/ansible/hosts',
						extras: "--extra-vars 'artifact=${ARTIFACT_URL}'")
}
}
}
}
