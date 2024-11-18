pipeline {
    agent any
    
    stages{
        stage("code"){
            steps{
                echo "This is code"
            }
        }
        stage("Build"){
            steps{
                echo "This is Build the Code"
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