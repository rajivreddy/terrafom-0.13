locals {
  name = format("%s-%s", var.name, var.environment)
  vpc_tags = merge({
    "kubernetes.io/cluster/${var.name}-${var.environment}" = "shared"
    },
    var.additional_tags
  )
}