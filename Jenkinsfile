pipeline {
	agent any

	stages {
	    stage('Checkout') {
	        steps {
				checkout scm			        }
		    }
		stage('Build') {
	        steps {
				sh 'mvn clean compile package -Dmaven.test.skip=true'
	        }
		}
// 		stage('Deployment') {
// 			steps {
// 				sh 'scp target/gamutkart.war /home/ubuntu/softs/apache-tomcat-8.5.41/webapps'
// 			}
// 		}

	}
}
