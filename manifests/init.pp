# Class: director
#
# This module manages director
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class director (
  $target = $director::params::target,
) inherits director::params {
 file_lane { 'certname':
   path  => '/etc/puppet/puppet.conf',
   line  => "certname=$hostname",
   match => '^certname=*',
 }
}
