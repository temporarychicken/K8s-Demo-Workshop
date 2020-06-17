resource "aws_key_pair" "controller-ws1" {
  key_name   = "k8s-server-key-ws1"
  public_key = file ("~/.ssh/k8s-key.pub")
}
