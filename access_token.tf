data "ns_connection" "ses" {
  name     = "ses"
  contract = "datastore/aws/ses"
}

locals {
  access_key_id_secret_id     = data.ns_connection.ses.outputs.access_key_id_secret_id
  secret_access_key_secret_id = data.ns_connection.ses.outputs.secret_access_key_secret_id
}

data "aws_secretsmanager_secret_version" "access_key_id" {
  secret_id = local.access_key_id_secret_id
}

data "aws_secretsmanager_secret_version" "secret_access_key" {
  secret_id = local.secret_access_key_secret_id
}
