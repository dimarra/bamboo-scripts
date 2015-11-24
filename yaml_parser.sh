#!/bin/bash +e 
# Validate syntax of hieradata yaml...
find hieradata -name "*.*yaml" | while read file; do echo "file=$file"; /opt/puppet/bin/ruby -e "require 'yaml'; YAML.load_file('$file')"; done 1> .tmp/yaml_parser.log 2>&1
value=$( grep -c "SyntaxError" .tmp/yaml_parser.log )
echo "$value Errors found in Yaml hieradata"
echo $value > .tmp/yaml_parser.err
