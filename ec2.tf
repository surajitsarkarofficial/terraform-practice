resource "aws_instance" "myec2" {
    ami = "ami-0a6ed6689998f32a5"
    instance_type = "t2.micro"
    count = "1"

    tags = {
      Name = "HelloWorld"
    }
  
}