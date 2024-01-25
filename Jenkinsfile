pipeline {
    agent any

    stages {
        stage('Bulding Environment') {
            steps {
                git branch: 'main', credentialsId: '408e79bd-3eca-4409-b896-8f455b56d2c8', url: 'https://github.com/YashPatel1210/nodejs.git'
                ansiblePlaybook become: true,credentialsId: '8e81aba6-6340-4249-b7ff-631507eb4e9a', installation: 'Ansible', inventory: 'inventory', playbook: 'env.yml',extras: '--become-pass-file pwd'
              }
            }
        stage('Bulding Docker Containers') {
            steps {
              ansiblePlaybook become: true,credentialsId: '8e81aba6-6340-4249-b7ff-631507eb4e9a', installation: 'Ansible', inventory: 'inventory', playbook: 'build.yml',extras: '--become-pass-file pwd'
              }
        }
        stage('Bulding Environment') {
            steps {
                git branch: 'main', credentialsId: '408e79bd-3eca-4409-b896-8f455b56d2c8', url: 'https://github.com/YashPatel1210/nodejs.git'
                ansiblePlaybook become: true,credentialsId: '8e81aba6-6340-4249-b7ff-631507eb4e9a', installation: 'Ansible', inventory: 'inventory', playbook: 'deploy.yml',extras: '--become-pass-file pwd'
              }
            }
    }       
}    
    
