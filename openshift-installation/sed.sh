#!/bin/bash
sed -i -e 's~${IMAGE}~http://docker.io/openshift/origin-console:latest~g' /opt/ansible/roles/openshift_console/files/console-template.yaml
