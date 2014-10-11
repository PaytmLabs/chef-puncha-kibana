name             'chamber-kibana'
maintainer       'Roman Chukh'
maintainer_email 'roman.chukh@gmail.com'
license          'Apache 2.0'
description      'Set of recipes for installing Kibana 4'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.2'

supports 'centos'

recipe "chamber-kibana::default", <<-EOH
Installs Kibana 4 (with or without dependencies).
See attributes for attribute-control of installed dependencies.
EOH
recipe "chamber-kibana::dependencies", <<-EOH
Installs Kibana 4 dependencies (without Kibana 4 itself).
See attributes for attribute-control of installed dependencies.
EOH

# Dependencies
depends 'chef-sugar', '~> 2.3'
depends 'ark', '~> 0.9'

# Optional dependencies
depends 'java', '~> 1.28.0'
depends 'elasticsearch', '~> 0.3.10'
recommends 'logstash', '~> 0.9.2'