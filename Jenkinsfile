pipeline {
	agent any

	stages {
	    stage('Checkout') {
	        steps {
				checkout scm			        }
		    }
		stage('Build') {
	        steps {
				sh '/home/phani/softs/apache-maven-3.6.0/bin/mvn install'
	        }
		}
		stage('Deployment') {
			steps {
				sh 'scp /root/.jenkins/workspace/gamutkart/target/gamutkart.war /home/phani/softs/apache-tomcat-8.5.38/webapps'
			}
		}

	}
}
