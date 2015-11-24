#!/bin/bash +e 
# Validate style of puppet manifests...
/opt/puppet/bin/puppet-lint modules 1> .tmp/puppet_lint.log 2>&1
value=$( grep -c "WARNING: " .tmp/puppet_lint.log )
echo "$value Warnings found in Puppet manifests"
value=$( grep -c "ERROR: " .tmp/puppet_lint.log )
echo "$value Errors found in Puppet manifests"
echo $value > .tmp/puppet_lint.err
