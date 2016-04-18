#!/bin/bash +e 
# Validate syntax of xml files...
START=${1:-"modules/*/files"}
find $START -name "domains.xml" |  xargs grep "agent mapping" | awk -F\" '{print $(NF-1)}' | python /app/ecetera/builder/bamboo-agent-home/build-dir/scripts/isRegex.py 1> .tmp/agent-mapping_parser.log 2>&1
value=$( grep -c "failed \?: " .tmp/agent-mapping_parser.log )
echo "$value Bad regex found in XML files"
echo $value > .tmp/agent-mapping_parser.err

