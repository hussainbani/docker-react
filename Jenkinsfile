pipeline {



stages {

stage('Docker Build') {
agent "Slave-Node"

steps {
echo "Building from Docker file"
sh "docker build -t react-app/latest ."

}
}

}

}

