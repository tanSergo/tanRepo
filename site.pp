node default {
  #java::oracle { 'jdk8' :
  # ensure  => 'present',
  # version => '8',
  #  java_se => 'jdk',
  #}
  class { 'oracle_java':
    version => '8u45',
    type    => 'jdk'
  }
  file { '/home/ec2-user/.profile':
    ensure => file,
    owner => ec2-user,
    group => ec2-user,
    mode => 0644,
    source => "puppet:///modules/tanRepo/.profile",
  } 
}
