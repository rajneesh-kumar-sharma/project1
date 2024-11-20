pipeline {
    agent any
    environment {
        IMAG_TAG = "${BUILD_NUMBER}"
    }
    
    stages{
        stage("code"){
            steps{
                echo "This is code"
                git credentialsId: '58c0d45bcfc925ff3d82e7010c706918', 
                url: 'https://github.com/rajneesh-kumar-sharma/project1',
                branch: 'master'
            }
        }
        stage("Build Docker"){
            steps{
                echo "This is Build the Code"
                script{
                    sh '''
                    echo 'Buid Docker Image'
                    docker build -t rajneesh-kumar-sharma/apache:${BUILD_NUMBER} .
                    '''
                }
            }
        }
        stage("test"){
            steps{
                echo "This is Testing phase"
            }
        }
        stage("Deploy"){
            steps{
                echo "Deploy on container"
            }
        }
    }
}
