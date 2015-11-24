#!/bin/bash +e 
# Update test results and report errors...
total=0
for filename in $(ls -a .tmp/*.err)
do
  value=$(cat $filename)
  echo "$value Errors in $filename"
  total=$[ $total + $value ]
  .tmp/update_results.sh $filename $value
done
echo "$total Total Errors found"
exit $total
