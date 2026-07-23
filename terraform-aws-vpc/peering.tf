resource "aws_vpc_peering_connection" "peering" {
  count = var.is_peering_required ? 1 : 0
  vpc_id        = aws_vpc.main.id    #requester vpc
  peer_vpc_id   = var.accepter_vpc_id == "" ? data.aws_vpc.default.id : var.accepter_vpc_id
  auto_accept = var.accepter_vpc_id == "" ? true : false
}