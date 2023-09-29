pipeline {
  agent any
  environment {
    MYSQL_CREDS=credentials('mariadbsecrets')
  }
  stages {
    stage('Status') {
      steps {
        sh '/opt/liquibase-4.23.2/liquibase status --url=$MARIADB_DB_URL --changeLogFile=my_app-wrapper.xml --username=$MYSQL_CREDS_USR --password=$MYSQL_CREDS_PSW'
      }
    }
    stage('Update') {
      steps {
        sh '/opt/liquibase-4.23.2/liquibase update --url=$MARIADB_DB_URL --changeLogFile=my_app-wrapper.xml --username=$MYSQL_CREDS_USR --password=$MYSQL_CREDS_PSW'
      }
    } 
  }
  post {
    always {
      cleanWs()
    }
  }
}