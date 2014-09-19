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
  $enabled   = $director::params::enabled,
  $hostname  = $director::params::hostname,
  $ip        = $director::params::ip,
  $interface = $director::params::interface,
) inherits director::params {
 if $enabled == true {
   file_line { 'hostname':
     path  => '/etc/sysconfig/network',
     line  => "HOSTNAME=$hostname",
     match => "^HOSTNAME=*"
   }
   file_line { 'ip':
     path  => "/etc/sysconfig/network-scripts/ifcfg-$interface",
     line  => "IPADDR=$ip",
     match => "^IPADDR=*"
   }
 }
}
