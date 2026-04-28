
# 1.  CONTENEDORES DOCKER ORIGINALES

resource "docker_container" "api" {
  name  = "api01-${terraform.workspace}"
  image = "lab/api"

  ports {
    internal = 8080
    external = var.api_port[terraform.workspace]
  }
}

resource "docker_container" "web" {
  name  = "web01-${terraform.workspace}"
  image = "lab/web"

  ports {
    internal = 80
    external = var.web_port[terraform.workspace]
  }
}

# ==========================================
# 2. TUS NUEVAS FUNCIONES LAMBDA EN AWS
# ==========================================
resource "aws_iam_role" "lambda_logistica_role" {
  name = "lambda_logistica_role_${terraform.workspace}"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
    }]
  })
}

# Lambda 1: Registrar Envío
resource "aws_lambda_function" "lambda_registrar" {
  function_name    = "RegistrarEnvioLogistica_${terraform.workspace}"
  role             = aws_iam_role.lambda_logistica_role.arn
  handler          = "com.example.demo.RegistrarEnvio::handleRequest"
  runtime          = "java17"
  filename         = "../demo/demo/target/demo-0.0.1-SNAPSHOT-exec.jar"
  source_code_hash = filebase64sha256("../demo/demo/target/demo-0.0.1-SNAPSHOT-exec.jar")
  timeout          = 15
  memory_size      = 512
}

# Lambda 2: Consultar Estado
resource "aws_lambda_function" "lambda_consultar" {
  function_name    = "ConsultarEstadoLogistica_${terraform.workspace}"
  role             = aws_iam_role.lambda_logistica_role.arn
  handler          = "com.example.demo.ConsultarEstado::handleRequest"
  runtime          = "java17" 
  filename         = "../demo/demo/target/demo-0.0.1-SNAPSHOT-exec.jar"
  source_code_hash = filebase64sha256("../demo/demo/target/demo-0.0.1-SNAPSHOT-exec.jar")
  timeout          = 15
  memory_size      = 512
}