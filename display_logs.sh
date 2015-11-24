#!/bin/bash +e 
# Display the log files...
[ -f .tmp/yaml_parser.log ] && echo -e "*** yaml_parser.log...\n$( cat .tmp/yaml_parser.log )" || echo "--- no yaml_parser.log"
[ -f .tmp/puppet_parser.log ] && echo -e "*** puppet_parser.log...\n$( cat .tmp/puppet_parser.log )" || echo "--- no puppet_parser.log"
[ -f .tmp/template_parser.log ] && echo -e "*** template_parser.log...\n$( cat .tmp/template_parser.log )" || echo "--- no template_parser.log"
[ -f .tmp/xml_parser.log ] && echo -e "*** xml_parser.log...\n$( cat .tmp/xml_parser.log )" || echo "--- no xml_parser.log"
[ -f .tmp/puppet_lint.log ] && echo -e "*** puppet_lint.log...\n$( cat .tmp/puppet_lint.log )" || echo "--- no puppet_lint.log"
[ -f .tmp/tar_package.log ] && echo -e "*** tar_package.log...\n$( cat .tmp/tar_package.log )" || echo "--- no tar_package.log"
