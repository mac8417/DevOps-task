pipeline {
	agent { label 'Principal' }
	options {
		buildDiscarder(logRotator(numToKeepStr: '5'))
	}
	environment {
		DOCKERHUB_CREDENTIALS = credentials('mcapare-dockerhub')
	}
	stages {
		stage('Build'){
			steps {
				bat 'docker build -t mcapare/dp-debian:latest .'
				}
			}
		stage ('Login') {
			steps {
				bat 'docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB-CREDENTIALS_PSW'
				}
			}
		stage ('Push') {
			steps {
				bat 'docker push mcapare/dp-debian:latest'
				}
			}
		}
	post {
		always {
			bat 'docker logout'
			}
		}
	}
