#!/bin/bash +e 
# Validate syntax of template files...
find modules -type d -name templates -exec sh -c 'find "$@" -type f' sh {} + | while read file; do echo "file=$file"; /opt/puppet/bin/erb -x -T '-' -P "$file" | /opt/puppet/bin/ruby -c; done 1> .tmp/template_parser.log 2>&1
value=$( grep -c "syntax error" .tmp/template_parser.log )
echo "$value Syntax Errors found in template files"
echo $value > .tmp/template_parser.err
