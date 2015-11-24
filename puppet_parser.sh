#!/bin/bash +e 
# Validate syntax of puppet manifests...
find modules -name "*.pp" | xargs -n 1 -t /usr/local/bin/puppet parser validate --parser future 1> .tmp/puppet_parser.log 2>&1
value=$( grep -c "Warning: " .tmp/puppet_parser.log )
echo "$value Warnings found in Puppet manifests"
value=$( grep -c "Error: " .tmp/puppet_parser.log )
echo "$value Errors found in Puppet manifests"
echo $value > .tmp/puppet_parser.err
