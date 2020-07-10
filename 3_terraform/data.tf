# Fetch k8s base Centos 8 Machine AMI identifiers
data "aws_ami" "k8s-base-machine" {
  most_recent = true
  owners      = ["self"]
  filter {
    name = "tag:Name"
    values = [
      "workshop0001.k8s-base-machine",
    ]
  }
}
