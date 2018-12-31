pipeline {

agent none

stages {

stage('Docker Build') {
agent {
label "Slave-Node"
}

steps {
echo "Building from Docker file"
sh "docker build -t react-app/latest ."

}
}

}

}

