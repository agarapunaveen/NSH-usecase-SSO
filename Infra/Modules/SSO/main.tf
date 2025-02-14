# resource "aws_cognito_user_pool" "user_pool" {
#   name = "my-user-pool"
  
#   auto_verified_attributes = ["email"]

#   schema {
#     attribute_data_type = "String"
#     name               = "email"
#     required           = true
#     mutable            = false
#   }
# }

# resource "aws_cognito_user_pool_client" "user_pool_client" {
#   name                         = "my-app-client"
#   user_pool_id                 = aws_cognito_user_pool.user_pool.id
#   generate_secret              = false
#   allowed_oauth_flows          = ["implicit"]
#   allowed_oauth_scopes         = ["email", "openid"]
#   allowed_oauth_flows_user_pool_client = true
#   callback_urls                = ["https://auv9p1esxb.execute-api.us-east-1.amazonaws.com/prod/"]
# }

# #  resource "aws_apigatewayv2_api" "api" {
# #   name          = "my-api"
# #   protocol_type = "HTTP"
# #   cors_configuration {
# #     allow_origins = ["*"]  # Restrict to your domain in production
# #     allow_methods = ["GET", "POST", "PUT", "DELETE"]
# #     allow_headers = ["Content-Type", "Authorization"]
# #     max_age       = 300
# #   }
# # }

# # resource "aws_apigatewayv2_authorizer" "cognito_authorizer" {
# #   api_id           = aws_apigatewayv2_api.api.id
# #   name             = "CognitoAuthorizer"
# #   authorizer_type  = "JWT"

# #   identity_sources = ["$request.header.Authorization"]

# #   jwt_configuration {
# #     audience = [aws_cognito_user_pool_client.user_pool_client.id]
# #     issuer   = "https://${aws_cognito_user_pool.user_pool.endpoint}"
# #   }
# # }

# # resource "aws_apigatewayv2_route" "secured_route" {
# #   api_id    = aws_apigatewayv2_api.api.id
# #   route_key = "GET /secure-endpoint"

# #   authorization_type = "JWT"
# #   authorizer_id      = aws_apigatewayv2_authorizer.cognito_authorizer.id
# # }

# # resource "aws_apigatewayv2_stage" "default" {
# #   api_id      = aws_apigatewayv2_api.api.id
# #   name        = "default"
# #   auto_deploy = true
# # }

