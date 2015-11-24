#!/bin/bash +e 
# Validate syntax of xml files...
find modules/*/files -name "*.xml" -print0 | xargs -0r -n 1 -t /usr/bin/xmllint --noout 1> .tmp/xml_parser.log 2>&1
value=$( grep -c "error \?: " .tmp/xml_parser.log )
echo "$value Errors found in XML files"
echo $value > .tmp/xml_parser.err
