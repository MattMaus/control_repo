node default {
  file {'/root/README':
    ensure => file,
    content => 'Bien le kikoo les assujetis !',
    owner => 'root',
  }
}
