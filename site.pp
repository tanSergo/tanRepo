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
  class profile {
    file { '/home/ec2-user/.profile':
      ensure => file,
      replace => yes,
      source => "puppet:///modules/tanRepo/.profile",
    } 
  }
}
