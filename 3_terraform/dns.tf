# Set some defaults for AWS like region.
#provider "aws" {
# profile = "default"
# region  = "eu-west-2"
#}


# Locate the correct zone from Route53

data "aws_route53_zone" "selected" {
  name         = "nginxdemo.net"
  private_zone = false
}



resource "aws_route53_record" "dockerregistry-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "dockerregistry.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-docker-registry.public_ip ]

}

resource "aws_route53_record" "kubernetes-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "kubernetes.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-k8s-master.public_ip ]

}



resource "aws_route53_record" "worker-node-1-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "worker-node-1.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-worker-node-1.public_ip ]

}


resource "aws_route53_record" "worker-node-2-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "worker-node-2.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-worker-node-2.public_ip ]

}

resource "aws_route53_record" "k8sdashboard-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "k8sdashboard.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-k8s-master.public_ip ]

}

resource "aws_route53_record" "ingressdashboard-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "ingressdashboard.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-k8s-master.public_ip ]

}

resource "aws_route53_record" "cafe-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "cafe.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-k8s-master.public_ip ]

}

resource "aws_route53_record" "cafe2-davidluke" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "cafe2.davidluke.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.davidluke-k8s-master.public_ip ]

}