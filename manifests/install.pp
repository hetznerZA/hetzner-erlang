class erlang::install ($version='1:19*') {

  package { $erlang::package:
    ensure  => present,
  }

  apt::pin { $erlang::package:
    packages => $erlang::package,
    version  => $version,
    priority => 1001,
  }
}
