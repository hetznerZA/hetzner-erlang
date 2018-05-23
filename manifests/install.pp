class erlang::install (
  $version='1:19*',
  $pin_packages='erlang*',
){

  package { $erlang::package:
    ensure  => present,
  }

  apt::pin { $erlang::package:
    packages => $erlang::package,
    version  => $version,
    priority => 1001,
  }
}
