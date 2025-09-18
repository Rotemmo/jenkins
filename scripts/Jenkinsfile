pipeline {
    agent any
    
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
                script {
                    sh '''
                        chmod +x scripts/hello.sh
                        ./scripts/hello.sh "${NAME}" > output.txt
                        echo "Script output:"
                        cat output.txt
                    '''
                }
            }
        }
    //Archive → save script output
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'output.txt', fingerprint: true
                echo "Artifacts archived successfully"
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