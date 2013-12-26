# == Class: samba::client::install
#
class samba::client::install (
  $client_package_name = $samba::params::client_package_name
) inherits samba::params {

  package { 'samba_client':
    ensure => present,
    name   => $client_package_name,
  }

}
