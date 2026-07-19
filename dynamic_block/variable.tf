variable "inbound_rules" {
  type = list 
  default = [
    {
        from_port =22,
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
    },
    {
        from_port =80,
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
    },
    {
        from_port =8080,
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
    },
    {
        from_port =3306,
        allowed_cidr = ["0.0.0.0/0"]
        protocol = "tcp"
    }
  ]
}