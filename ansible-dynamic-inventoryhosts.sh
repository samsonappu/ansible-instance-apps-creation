#!/bin/bash
sleep 20s
sed -e "s/\${master_host_ip}/`./ec2.py --list --refresh-cache | grep -B 2 -A 2 tag_Name_demo_openshift_master_demo | awk 'FNR==4{print $0}' | awk '{$1=$1};1' | sed 's/"//g'`/"  hosts_template > hosts_temp
sleep 5s
sed -e "s/\${worker_node_one}/`./ec2.py --list --refresh-cache | grep -B 5 -A 5 tag_Name_demo_openshift_worker_node_1 | awk 'FNR==7{print $0}' | awk '{$1=$1};1' | sed 's/"//g'`/"  hosts_temp > hosts_temp_1
sleep 5s
sed -e "s/\${worker_node_two}/`./ec2.py --list --refresh-cache | grep -B 5 -A 5 tag_Name_demo_openshift_worker_node_2 | awk 'FNR==7{print $0}' | awk '{$1=$1};1' | sed 's/"//g'`/"  hosts_temp_1 > hosts_temp_2
sleep 5s
sed -e "s/\${worker_node_three}/`./ec2.py --list --refresh-cache | grep -B 5 -A 5 tag_Name_demo_openshift_worker_node_3 | awk 'FNR==7{print $0}' | awk '{$1=$1};1' | sed 's/"//g'`/"  hosts_temp_2 > hosts_temp_3
sleep 5s
sed -e "s/\${worker_node_four}/`./ec2.py --list --refresh-cache | grep -B 5 -A 5 tag_Name_demo_openshift_worker_node_4 | awk 'FNR==7{print $0}' | awk '{$1=$1};1' | sed 's/"//g'`/"  hosts_temp_3 > hosts_temp_4
sleep 5s
sed -e "s/\${worker_infra_one}/`./ec2.py --list --refresh-cache | grep -B 5 -A 5 tag_Name_demo_openshift_infra_node_1 | awk 'FNR==7{print $0}' | awk '{$1=$1};1' | sed 's/"//g'`/"  hosts_temp_4 > hosts
