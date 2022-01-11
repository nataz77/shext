#!/bin/bash
#Usage: ./kubecleanup {namespace}
if [ -z $1 ]
then
    echo 'No namespace selected, proceeding on default'
    kubectl get pods | grep Evicted | awk '{print $1}' | xargs kubectl delete pod
else
    kubectl get pods -n $1 | grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n $1
fi
