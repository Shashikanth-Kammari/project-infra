resource "aws_vpc_peering_connection" "peering" {
  count = var.is_peering_required ? 1 : 0
  vpc_id        = aws_vpc.main.id    #requister vpc
  peer_vpc_id   = var.accepter_vpc == "" ? "default-vpc" : var.accepter_vpc
  
}