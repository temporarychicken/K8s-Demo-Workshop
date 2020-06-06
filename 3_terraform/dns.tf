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



resource "aws_route53_record" "dockerregistry-ws1" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "dockerregistry.ws1.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.ws1-docker-registry.public_ip ]

}

resource "aws_route53_record" "kubernetes-ws1" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "kubernetes.ws1.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.ws1-k8s-master.public_ip ]

}



resource "aws_route53_record" "worker-node-1-ws1" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "worker-node-1.ws1.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.ws1-worker-node-1.public_ip ]

}


resource "aws_route53_record" "worker-node-2-ws1" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "worker-node-2.ws1.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.ws1-worker-node-2.public_ip ]

}

resource "aws_route53_record" "k8sdashboard-ws1" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "k8sdashboard.ws1.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.ws1-k8s-master.public_ip ]

}

resource "aws_route53_record" "ingressdashboard-ws1" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "ingressdashboard.ws1.${data.aws_route53_zone.selected.name}"
  type    = "A"
  ttl     = "60"
# records = ["${chomp(http.myip.body)}"]
  records = [ aws_instance.ws1-k8s-master.public_ip ]

}
