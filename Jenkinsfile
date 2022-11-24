pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    environment {
        SSH_CRED = credentials('SSH-CRED')
    }
    tools {
            maven 'maven-3.5.0' 
        }
    stages {
        stage('Performing Lint Checks') {
            when { branch pattern: "feature.*", comparator: "REGEXP"}
            steps {
                sh "env"
                sh "echo This stage should only run against the feature branch only"
                sh "echo LINT CHECKS COMPLETED"
            }
        }
        
        stage('Performing Ansible Dryrun') {
            when { branch pattern: "PR-.*", comparator: "REGEXP"}
                steps {
                   sh "env"
                   sh "echo This stage should run only from the PR"
                   sh "ansible-playbook robot-dryrun.yml -e COMPONENT=mongodb -e ENV=dev -e ansible_user=${SSH_CRED_USR} -e ansible_password=${SSH_CRED_PSW}"
                }
            }

        stage('Performing Merge to Main') {
            when { branch 'main' }
            steps {
                    sh "env"
                    sh "echo This stage should run only from the main branch"
                    sh "echo Performing Merge"
                    sh "echo Doing Deployment"
                }
            }

        stage('Testing The Release with tag') {
            when { expression { TAG_NAME ==~ .* } }
            steps {
                    sh "env"
                    sh "echo Running it against TAG $TAG_NAME"
                }
            }
        }    
    }

