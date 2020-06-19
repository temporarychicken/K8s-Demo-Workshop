
# dns.tf

sed -i 's/"dockerregistry"/"dockerregistry-workshop0001"/g' dns.tf
sed -i 's/"kubernetes"/"kubernetes-workshop0001"/g' dns.tf
sed -i 's/"worker-node-1"/"worker-node-1-workshop0001"/g' dns.tf
sed -i 's/"worker-node-2"/"worker-node-2-workshop0001"/g' dns.tf
sed -i 's/"k8sdashboard"/"k8sdashboard-workshop0001"/g' dns.tf
sed -i 's/"ingressdashboard"/"ingressdashboard-workshop0001"/g' dns.tf


sed -i 's/= "dockerregistry./= "dockerregistry.workshop0001./g' dns.tf
sed -i 's/= "kubernetes./= "kubernetes.workshop0001./g' dns.tf
sed -i 's/= "worker-node-1./= "worker-node-1.workshop0001./g' dns.tf
sed -i 's/= "worker-node-2./= "worker-node-2.workshop0001./g' dns.tf
sed -i 's/= "k8sdashboard./= "k8sdashboard.workshop0001./g' dns.tf
sed -i 's/= "ingressdashboard./= "ingressdashboard.workshop0001./g' dns.tf



sed -i 's/aws_instance.docker-registry/aws_instance.workshop0001-docker-registry/g' dns.tf
sed -i 's/aws_instance.worker-node-1/aws_instance.workshop0001-worker-node-1/g' dns.tf
sed -i 's/aws_instance.worker-node-2/aws_instance.workshop0001-worker-node-2/g' dns.tf
sed -i 's/aws_instance.k8s-master/aws_instance.workshop0001-k8s-master/g' dns.tf



# Instantiated Machines

sed -i 's/"worker-node/"workshop0001-worker-node/g' worker-node*.tf
sed -i 's/"k8s-master/"workshop0001-k8s-master/g' k8s-master.tf
sed -i 's/"docker-registry/"workshop0001-docker-registry/g' dockerregistry.tf

sed -i 's/aws_route53_record.dockerregistry/aws_route53_record.dockerregistry-workshop0001/g' dockerregistry.tf



sed -i 's/k8s-base-machine",/workshop0001.k8s-base-machine",/g' data.tf

sed -i 's/data.aws_ami.k8s-base-machine.id",/data.aws_ami.workshop0001.k8s-base-machine.id",/g' worker-node-1.tf
sed -i 's/data.aws_ami.k8s-base-machine.id",/data.aws_ami.workshop0001.k8s-base-machine.id",/g' worker-node-2.tf
sed -i 's/data.aws_ami.k8s-base-machine.id",/data.aws_ami.workshop0001.k8s-base-machine.id",/g' k8s-master.tf
sed -i 's/data.aws_ami.k8s-base-machine.id",/data.aws_ami.workshop0001.k8s-base-machine.id",/g' dockerregistry.tf






