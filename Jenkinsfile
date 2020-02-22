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
    stage('deploy to tomcat')
	{
	  steps{
     sshagent (['tomcat']) 
	 {
     sh 'scp -o StrictHostKeyChecking=no */target/*.war ec2-user@172.31.92.121:/usr/share/tomcat/webapp/'
    }
}
}
}	
}
}
