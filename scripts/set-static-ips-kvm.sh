#!/bin/bash
VM1="k8s-node-1"
VM2="k8s-node-2"
VM3="k8s-node-3"

MAC1=$(sudo virsh dumpxml $VM1 | grep -i mac | awk 'NR>2' | awk -F "=" '{print $2}' | sed 's/\/>//g')
MAC2=$(sudo virsh dumpxml $VM2 | grep -i mac | awk 'NR>2' | awk -F "=" '{print $2}' | sed 's/\/>//g')
MAC3=$(sudo virsh dumpxml $VM3 | grep -i mac | awk 'NR>2' | awk -F "=" '{print $2}' | sed 's/\/>//g')

virsh net-destroy default

EDITOR='sed -i /^.*range/a\ "\<host\ mac='"${MAC3}"'\ name='"'${VM3}'"'\ ip='"'192.168.122.12'"' \/\>"' virsh net-edit default
EDITOR='sed -i /^.*range/a\ "\<host\ mac='"${MAC2}"'\ name='"'${VM2}'"'\ ip='"'192.168.122.11'"' \/\>"' virsh net-edit default
EDITOR='sed -i /^.*range/a\ "\<host\ mac='"${MAC1}"'\ name='"'${VM1}'"'\ ip='"'192.168.122.10'"' \/\>"' virsh net-edit default

virsh net-start default

virsh shutdown $VM1 && sleep 5 && virsh start $VM1
virsh shutdown $VM2 && sleep 5 && virsh start $VM2
virsh shutdown $VM3 && sleep 5 && virsh start $VM3






