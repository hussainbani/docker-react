pipeline {

agent any

stages {

stage('Docker Build') {
steps {
echo "Building from Docker file"
sh "docker build -t react-app/latest ."

}
}

}

}

