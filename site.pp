node default {
  class { 'oracle_java':
    version => '8u45',
    type    => 'jdk'
  }
}
