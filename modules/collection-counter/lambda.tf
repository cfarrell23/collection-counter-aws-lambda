data "archive_file" "python_lambda_package" {  
  type = "zip"  
  source_file = "${path.module}/code/collection_counter.py" 
  output_path = "counter.zip"
}

resource "aws_lambda_function" "terraform_lambda_func" {
  function_name = "collectionCounter"
  filename      = "counter.zip"
  source_code_hash = data.archive_file.python_lambda_package.output_base64sha256
  role          = aws_iam_role.lambda_role.arn
  runtime       = "python3.9"
  handler       = "collection_counter.lambda_handler"
  timeout       = 10
  description = "Takes a name and number of items and works out total cost"
}