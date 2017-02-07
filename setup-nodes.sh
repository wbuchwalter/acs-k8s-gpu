#!/bin/bash
nodes=$(kubectl get node -o name | grep -o 'k8s-agentpool[0-9]-[0-9]*-[0-9]')

for node in $nodes; do
        ssh -t -oStrictHostKeyChecking=no $node "echo 'Installing driver on $node...' && curl -L -sf https://gist.githubusercontent.com/wbuchwalter/b9912aae79bdd7be5ae761267c6d5a81/raw/8c9dbbacbbcd74415213da15dd587b3356ae93bf/install-nvidia-driver.sh | sudo sh "
done
