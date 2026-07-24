# terraform-aws-ec2  module

## Inputs:

* ami_id (optional): default value is ami-0d9f6f413453de9a6
* security_group_ids(optional): list of security groups ids, default is sg-053d3546684b66ed39(my)
* instance_type(optional): default value is "t3.micro"
* tags(optional): default vlaue is eampty

## Outputs

* public_ip: outputs the public ip after instance created
* private_ip: outputs the private_ip after instance created
* instnace_id: outputs the instance id after instance created


