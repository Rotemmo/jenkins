pipeline {
    agent { label 'linux-docker-extra' }  
    
    parameters {
        string(name: 'NAME', defaultValue: 'World', description: 'Name parameter for the hello script')
    }
    
    //Print node/agent information at start :
    stages {
        stage('Info') {
            steps {
                echo "Running on node: ${NODE_NAME}"
            }
        }
    
    //Checkout
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    //Run Script → execute
        stage('Run Script') {
            steps {
                sh 'scripts/hello.sh "$NAME" > output.txt'
            }
        }

    //Archive → save script output
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'output.txt', fingerprint: true
            }
        }
    }
    
    post {
        always {
            echo "Pipeline completed"
        }
        success {
            echo "Pipeline succeeded"
        }
        failure {
            echo "Pipeline failed"
        }
    }
}