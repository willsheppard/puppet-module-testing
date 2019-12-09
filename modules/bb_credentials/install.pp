define bb_credentials::install () {

    include stdlib

    service { 'httpd':
        ensure => running,
        name   => $name
    }

}
