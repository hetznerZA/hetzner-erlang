class erlang::repository::apt {
  include ::apt

  $apt_url = $::operatingsystem ? {
    'Ubuntu' => 'http://packages.erlang-solutions.com/ubuntu',
    default  => 'http://packages.erlang-solutions.com/debian',
  }

  apt::source { 'erlang-solutions':
    comment  => 'Erlang solutions official repository',
    location => $apt_url,
    repos    => 'contrib',
    include  => {
      deb => true,
      src => false
    },
    key      => {
      id     => 'E1D6A1C146C93526BB4BA625AAE6A8D0BBCB7254',
      server => 'pool.sks-keyservers.net',
    }
  }
}
