node default {
  #java::oracle { 'jdk8' :
  # ensure  => 'present',
  # version => '8',
  #  java_se => 'jdk',
  #}
  class { 'oracle_java':
    version => '8u73',
    type    => 'jdk'
  }
  file { '/home/ec2-user/.profile':
    ensure => present,
    source => '/etc/puppet/modules/tanRepo/.profile',
  } 
}
