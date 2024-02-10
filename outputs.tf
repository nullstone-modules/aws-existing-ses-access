output "secrets" {
  value = [
    {
      name  = "COGNITO_ACCESS_KEY_ID"
      value = data.aws_secretsmanager_secret_version.access_key_id.secret_string
    },
    {
      name  = "COGNITO_SECRET_ACCESS_KEY"
      value = data.aws_secretsmanager_secret_version.secret_access_key.secret_string
    }
  ]
}
