#!/bin/bash +e 
# Validate syntax of xml files...
START=${1:-"modules/*/files"}
find $START -name "loadbalancing.xml" |  xargs grep agent-specifier | cut -f2 -d">" | cut -f1 -d"<" | python /app/ecetera/builder/bamboo-agent-home/build-dir/scripts/isRegex.py 1> .tmp/agent-specifier_parser.log 2>&1
value=$( grep -c "failed" .tmp/agent-specifier_parser.log )
echo "$value Bad regex found in XML files"
echo $value > .tmp/agent-specifier_parser.err

