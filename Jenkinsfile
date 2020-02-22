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
    stage('sonar and maven package')
	{
	  steps{
	    withSonarQubeEnv('sonar')
       {
            withMaven(jdk: 'localjdk', maven: 'localmaven') 
	{
	sh 'clean mvn install sonar:sonar'
	}
}
}
}	
}
}
