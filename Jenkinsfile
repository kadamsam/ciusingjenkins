pipeline {
    agent { label "reactJS" }
        stages {
            stage('Checkout') {
                steps {
                    echo 'This is the Checkout Stage'
                    git url: 'https://github.com/ahfarmer/emoji-search'
                    sh ('ls -l')
                }
            }
            stage('Build') {
                steps {
                    echo 'This is the Build Stage'
                    echo 'run the build script -build/build.sh'
                }
            }
            stage('Test') {
                steps {
                    echo 'This is the Testing Stage'
                    echo 'run the test script -test/test_case1.sh'
                }
            }
            stage('Deploy') {
                steps {
                    echo 'This is the Deploy Stage'
                    echo 'run the test script -deploy/deploy.sh'
                }
            }
        }
    }
