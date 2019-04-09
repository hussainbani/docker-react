def ATRIFACT_URL
pipeline {
	agent any;

	stages {
		stage('Calling Rundeck for Deployment') {
			steps {
				echo "${env.WORKSPACE}"
				echo "/var/lib/jenkins/jobs/${env.JOB_NAME}/branches/${env.BRANCH_NAME}/builds/${env.BUILD_NUMBER}"
				sh './name.sh'
				load "${env.WORKSPACE}\\project.properties"
}

}
	stage('Creating atificats'){
		steps {
			archiveArtifacts artifacts: '**', onlyIfSuccessful: true
			echo "${env.ARTIFACT_URL}"

}
}    
        stage('Deployment Through Ansible') {
            steps {
		ansiblePlaybook(
				playbook: 'deploy.yml',
				inventory: '/etc/ansible/hosts',
				extraVars: 'artifact=${env.ARTIFACT_URL}'
)
} 
}
}
}
