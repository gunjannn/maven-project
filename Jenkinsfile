pipeline
{
agent any
stages 
{
 stage('scm checkout'){ 
	steps {
	git branch: 'master', url: 'https://github.com/gunjannn/maven-project'
	}}
stage ('parallel stage')
{
parallel
{
stage('maven test')
{ 
steps
{
withMaven(jdk: 'localjdk', maven: 'localmaven') 
{
sh 'mvn test'
}}}

stage('package')
{ 
steps
{
WithMaven(jdk: 'localjdk', maven: 'localmaven')
{
sh 'mvn package'
}}}
}
}
}
}



