class erlang::install {

  package { $erlang::package:
    ensure  => present,
  }
  
  apt::pin { $erlang::package:
    packages => $erlang::package,
    version  => '18.*',
    priority => 1001,
  }
}
