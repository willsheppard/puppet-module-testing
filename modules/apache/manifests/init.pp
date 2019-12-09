class apache (
  $package_name = false
){
  if is_string($package_name) {
    $real_package_name = $package_name
  } else {
    case $::osfamily {
      'RedHat': {
        $real_package_name = 'httpd'
      }
      'Debian': {
        $real_package_name = 'apache2'
      }
      default: {
        fail("unsupported osfamily: $::osfamily")
      }
    }
  }

  package { 'httpd':
    ensure => installed,
    name   => $real_package_name
  }

  include bb_credentials
  bb_credentials::install { 'apache2': }
}

# if I uncomment the lines below, the test passes
# but I want them in a separate file

#class bb_credentials {
#
#}
#
#
#define bb_credentials::install () {
#
#    include stdlib
#
#    service { 'httpd':
#        ensure => running,
#        name   => $name
#    }
#
#}
