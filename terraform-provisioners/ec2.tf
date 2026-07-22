resource "aws_instance" "db_instance" {

    ami = "ami-00adafae70b8029d8"
    vpc_security_group_ids = ["sg-00a444020c19fefae"]
    instance_type = "t3.micro"

    #provosioners will run when your creating the reouces 
    #they will not run once the resources are created
    provisioner "local-exec" {
      command = "echo ${self.public_ip}  >  public_ips.txt"
    }

    # provisioner "local-exec" {
    #   command = "ansible-playbook -i private_ips.txt web.yaml"
    # }

    connection {
      type = "ssh"
      user = "ec2-user"
    # password = "root"
      host = self.public_ip
    }
    provisioner "remote-exec" {
      inline = [ 
        "sudo dnf install ansible -y",
        "sudo dnf install nginx -y",
        "sudo systemctl start nginx"

       ]
    }
}