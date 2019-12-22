pipeline {

    agent {
      label "master"
     }
          
    tools {
       maven 'Maven' 
       jdk 'Java'      
    }
    
    stages {
            stage('Build') {
                    steps {
                        sh 'mvn install -DskipTests=true'
                    }
            }

             stage('Test'){
                    steps{
                      sh 'mvn test'
                    }
             }

             stage('Deploy'){
                    steps{
                      sh 'mvn deploy'
                    }
             }

    }
}
        
        
            
        
        
          
