#!/bin/bash
nodes=$(kubectl get node -o name | grep -o 'k8s-agentpool[0-9]-[0-9]*-[0-9]')

for node in $nodes; do
        ssh -t -oStrictHostKeyChecking=no $node "echo 'Installing driver on $node...' && curl -L -sf https://raw.githubusercontent.com/ritazh/acs-k8s-gpu/master/install-nvidia-driver.sh | sudo sh "
done
