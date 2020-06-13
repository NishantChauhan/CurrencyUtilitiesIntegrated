pipeline {
    agent {
        docker {
            image 'nishantchouhan/currency-utilities-integrated-build'
            args '--user root --network host -v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Initiate CI environment') {
            steps {
                sh 'chmod +x ./ci/scripts/*.sh'
                sh './ci/scripts/startDockerCompose.sh'
            }
        }
        stage('Test E2E') {
            steps {
                sh './ci/scripts/executeE2ETest.sh'
            }
        }
        stage('Wait for Manual Test') {
            options {
                timeout(time: 30, unit: 'SECONDS') 
            }
            steps {
                echo 'enable the input message to wait for manual test'  
                // input message: 'Finished using the CI? (Click "Proceed" to continue)' 
            }
        }
        stage('Tear Down CI environment') {
            steps {
                sh './ci/scripts/stopDockerCompose.sh'
            }
        }
    }

}