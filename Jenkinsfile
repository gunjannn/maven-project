pipeline
 {
   agent any
   stages
   {

      stage('scm checkout')
      { 
        steps{
               git branch: 'master', url: 'https://github.com/gunjannn/maven-project.git'
             }
      }

     stage('compile job')
      {
        steps{
               withMaven(jdk: 'localjdk', maven: 'localmaven') {
        sh 'mvn complie'
                }
             }

      }
    }
 }
