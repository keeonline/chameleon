data "aws_vpc" "main" {
  filter {
    name   = "tag:Environment"
    values = ["${var.infra_environment}"]
  }
}


data "aws_subnets" "public" {
  filter {
    name   = "tag:Environment"
    values = ["${var.infra_environment}"]
  }

  filter {
    name   = "tag:Public"
    values = ["yes"]
  }
}

data "aws_subnet" "public" {
  for_each = toset(data.aws_subnets.public.ids)
  id       = each.value
}


data "aws_subnets" "private" {
  filter {
    name   = "tag:Environment"
    values = ["${var.infra_environment}"]
  }

  filter {
    name   = "tag:Public"
    values = ["no"]
  }
}

data "aws_subnet" "private" {
  for_each = toset(data.aws_subnets.private.ids)
  id       = each.value
}
