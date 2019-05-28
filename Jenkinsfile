pipeline {
	agent any

	stages {
	    stage('Checkout') {
	        steps {
				checkout scm			        }
		    }
		stage('Build') {
	        steps {
				sh '/home/ubuntu/softs/apache-maven-3.6.1/bin/mvn install'
	        }
		}
		stage('Deployment') {
			steps {
				sh 'scp target/gamutkart.war /home/ubuntu/softs/apache-tomcat-8.5.41/webapps'
			}
		}

	}
}
