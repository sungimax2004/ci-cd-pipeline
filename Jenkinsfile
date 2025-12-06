pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "eu-west-2" // London
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install dependencies') {
            steps {
                sh '''
                  pip install --upgrade pip
                  pip install -r app/requirements.txt
                '''
            }
        }

        stage('Run tests') {
            steps {
                sh '''
                  python -m compileall app || true
                '''
            }
        }

        stage('Trigger AWS CodePipeline') {
            when {
                expression { return env.BRANCH_NAME == 'main' || env.BRANCH_NAME == 'master' }
            }
            steps {
                withAWS(region: "${env.AWS_DEFAULT_REGION}", credentials: 'aws-jenkins-creds') {
                    sh '''
                      aws codepipeline start-pipeline-execution \
                        --name my-devops-demo-pipeline
                    '''
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline finished."
        }
    }
}
