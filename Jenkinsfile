pipeline {
    agent {
        docker {
            image 'node:10-alpine'
            args '--user root --network host -v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Launch CI Environment') {
            steps {
				sh 'chmod +x ./ci/scripts/*.sh'
               sh './ci/scripts/startCurrencyCIEnv.sh'
            }
        }
        stage('Build Test Suite') {
            steps {
                sh './ci/scripts/installDependencies.sh'
                sh './ci/scripts/buildTestSuite.sh'
            }
        }
        stage('Test E2E') {
            steps {
                sh './ci/scripts/startE2ETest.sh'
            }
        }
        stage('Tear Down CI') {
            steps {
                // input message: 'Finished using the CI? (Click "Proceed" to continue)' 
                sh './ci/scripts/stopCurrencyCIEnv.sh'
            }
        }
    }

}