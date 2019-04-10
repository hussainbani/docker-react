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
		ansiblePlaybook(
				playbook: 'deploy.yml',
				inventory: '/etc/ansible/hosts',
				extraVars{
					extraVar("artifact", "${ARTIFACT_URL}", false)
}
)
} 
}
}
}
