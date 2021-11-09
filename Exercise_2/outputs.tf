# TODO: Define the output variable for the lambda function.
output "aws_lambda" {
    description = "AWS Lambda Function"
    value = aws_lambda_function.lambda_function
}