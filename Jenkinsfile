pipeline {
	agent { label 'linux' }
	options {
		buildDiscarder(logRotator(numToKeepStr: '5'))
	}
	environment {
		DOCKERHUB_CREDENTIALS = credentials('mcapare-dockerhub)
	}
	stages {
		stage('Build'){
			steps {
				sh 'docker build -t mcapare/dp-debian:latest .'
				}
			}
		stage ('Login') {
			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-D3v0ps.2021'
				}
			}
		stage ('Push') {
			steps {
				sh 'docker push mcapare/dp-debian:latest'
				}
			}
		}
	post {
		alwayas {
			sh 'docker logout'
			}
		}
	}
