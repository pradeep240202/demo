pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository
                git url: 'https://github.com/pradeep240202/demo.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Install Python dependencies
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Run Script') {
            steps {
                // Run your Python script
                sh 'python your_script.py'
            }
        }
        stage('Run Tests') {
            steps {
                // Run tests if you have any
                sh 'pytest'
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
