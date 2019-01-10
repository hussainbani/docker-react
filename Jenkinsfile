pipeline {

agent none

stages {


stage('Docker Deployment'){
agent {
label "Slave-Node"
}

ansiblePlaybook(
playbook: 'test.yml',
inventory: '/etc/ansible/hosts'
)

}

}

}
