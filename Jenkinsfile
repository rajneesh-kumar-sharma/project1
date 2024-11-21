@Library("Shared") _
pipeline {
    agent any
    
    stages{
        stage("code"){
            steps{
                echo "This is code"
                clone("https://github.com/rajneesh-kumar-sharma/project1.git","master")
            }
        }
        stage("Build Docker"){
            steps{
                echo "This is Build the Code"
                docker_build("webapp","latest","coolrajnish")                 }
            }
        stage("Push to Docker Hub"){
            steps{
                docker_push("webapp","latest","coolrajnish")
            }
        }
        stage("Deploy"){
            steps{
                echo "Deploy on container"
                sh "docker compose up -d"
            }
        }
    }
}
