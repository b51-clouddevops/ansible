pipeline {
    agent any 
    environment {
        SSH_CRED = credentials('SSH-CRED')
    }
    stages {
        stage('Performing a DRY-RUN Role Validation'){
            steps {
                sh "ansible-playbook robot-dryrun.yml -e COMPONENT=mongodb -e ENV=dev -e ansible_user=centos -e ansible_password=DevOps321"
            }
        }
    }
}