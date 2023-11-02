provider "aws" {
	region = "eu-north-1"
	access_key = "my-access-key"
    secret_key = "my-secret-key"
}

resource "aws_instance" "intro" {
	ami = "ami-07ec4220c92589b40"
	instance_type = "t3.micro"
	availability_zone = "eu-north-1a"
	key_name = "Dove-key"
	vpc_security_groups_ids = [sg-01b80a056a94c1ce6]
	tags = {
	  Name = "Dove-instances"
	} 

}