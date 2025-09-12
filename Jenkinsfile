pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                bat 'docker build -t devdocker .'
            }
        }
        stage('Run'){
            steps{
                bat 'docker run -d -p 5000:5000 devdocker'
            }
        }
    }
    post{
    success{
      echo 'Build, test, packaging JAR successful'
    }
    failure{
      echo 'JAR packaging failed'
    }
  }
}