#!/bin/bash +e 
# Update NUnit Test Results File...
filename=$1
value=$2
case "$filename" in
  .tmp/puppet_parser.err)
    if [ "$value" == "0" ]
    then
      sed -i -e 's|name="Validate-Manifest-Syntax" executed="False" result="Skipped"|name="Validate-Manifest-Syntax" executed="True" result="Passed"|g' .tmp/test_results.xml
    else
      sed -i -e 's|name="Validate-Manifest-Syntax" executed="False" result="Skipped"|name="Validate-Manifest-Syntax" executed="True" result="Failed"><failure></failure|g' .tmp/test_results.xml
    fi ;;
  .tmp/yaml_parser.err)
    if [ "$value" == "0" ]
    then
      sed -i -e 's|name="Validate-Hieradata-Syntax" executed="False" result="Skipped"|name="Validate-Hieradata-Syntax" executed="True" result="Passed"|g' .tmp/test_results.xml
    else
      sed -i -e 's|name="Validate-Hieradata-Syntax" executed="False" result="Skipped"|name="Validate-Hieradata-Syntax" executed="True" result="Failed"><failure></failure|g' .tmp/test_results.xml
    fi ;;
  .tmp/template_parser.err)
    if [ "$value" == "0" ]
    then
      sed -i -e 's|name="Validate-Template-Syntax" executed="False" result="Skipped"|name="Validate-Template-Syntax" executed="True" result="Passed"|g' .tmp/test_results.xml
    else
      sed -i -e 's|name="Validate-Template-Syntax" executed="False" result="Skipped"|name="Validate-Template-Syntax" executed="True" result="Failed"><failure></failure|g' .tmp/test_results.xml
    fi ;;
  .tmp/xml_parser.err)
    if [ "$value" == "0" ]
    then
      sed -i -e 's|name="Validate-XML-Syntax" executed="False" result="Skipped"|name="Validate-XML-Syntax" executed="True" result="Passed"|g' .tmp/test_results.xml
    else
      sed -i -e 's|name="Validate-XML-Syntax" executed="False" result="Skipped"|name="Validate-XML-Syntax" executed="True" result="Failed"><failure></failure|g' .tmp/test_results.xml
    fi ;;
  .tmp/agent-mapping_parser.err)
    if [ "$value" == "0" ]
    then
      sed -i -e 's|name="Validate-XML-Syntax" executed="False" result="Skipped"|name="Validate-Agent-Mapping-Regex" executed="True" result="Passed"|g' .tmp/test_results.xml
    else
      sed -i -e 's|name="Validate-XML-Syntax" executed="False" result="Skipped"|name="Validate-Agent-Mapping-Regex" executed="True" result="Failed"><failure></failure|g' .tmp/test_results.xml
    fi ;;
  .tmp/agent-specifier_parser.err)
    if [ "$value" == "0" ]
    then
      sed -i -e 's|name="Validate-XML-Syntax" executed="False" result="Skipped"|name="Validate-Agent-Specifier-Regex" executed="True" result="Passed"|g' .tmp/test_results.xml
    else
      sed -i -e 's|name="Validate-XML-Syntax" executed="False" result="Skipped"|name="Validate-Agent-Specifier-Regex" executed="True" result="Failed"><failure></failure|g' .tmp/test_results.xml
    fi ;;
  .tmp/puppet_lint.err)
    if [ "$value" == "0" ]
    then
      sed -i -e 's|name="Validate-Manifest-Style" executed="False" result="Skipped"|name="Validate-Manifest-Style" executed="True" result="Passed"|g' .tmp/test_results.xml
    else
      sed -i -e 's|name="Validate-Manifest-Style" executed="False" result="Skipped"|name="Validate-Manifest-Style" executed="True" result="Failed"><failure></failure|g' .tmp/test_results.xml
    fi ;;
esac
