sed -i 's/k8s-base-machine/ws1.k8s-base-machine/g' pack_k8s_base_docker_machine.json
sed -i 's/nginxdemo.net/ws1.nginxdemo.net/g' *
sed -i 's/nginxdemo.net/ws1.nginxdemo.net/g' k8s_configuration/*

