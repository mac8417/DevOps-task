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
				bat 'docker login -u mcapare -p D3v0ps.2021'
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
