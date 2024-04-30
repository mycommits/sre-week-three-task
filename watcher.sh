#!/bin/bash

# Variables
## Namespace Name
NAMESPACE_NAME="sre"
## Deployment Name
DEPLOYMENT_NAME="swype-app"
MAX_ALLOWED_RESTART=3

while :
do
    RESTART_COUNT=`kubectl get po -l app=$DEPLOYMENT_NAME -n $NAMESPACE_NAME | awk '{print $4}' | tail -n 1`
    echo $RESTART_COUNT
    if [ $RESTART_COUNT -gt $MAX_ALLOWED_RESTART ]; then
        echo "scale down the deployment to zero"
        kubectl scale --replicas=0 deployment $DEPLOYMENT_NAME -n $NAMESPACE_NAME
        break
    else
        sleep 60
    fi
done