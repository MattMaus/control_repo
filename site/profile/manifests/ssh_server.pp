class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd' :
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'rootW@master.puppet.vm' :
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC64VsiWdHyWKSFc2a62GRN4IJPAmWJ0EG6C5Rr/A9T3X6v8cgJ/NKNkNtouV38riJ18j3cuheyBzuyKRSi8ueHwdTtjkm6hTxUMF9wQGKORYOzyGAjetOxvVDVpBroEt44J0P1NsqzQzycBZN1wRnZdKNafxjsPCr+j2/tjVmiXusm/6AKB9s5gvn1DRj8ekBKp7d+HfzLiCzvdAXHKaImAsSKpxKc5Mi/1U2whoM1p/PVXVjmVNlPEhzlusi7CttgD6W5bQYUEnqIKfrcn1BxYI5W0XObcJwkVvmcni7fGtEgWtGeKkLbANTkCDA7zZUaHFNOmwp98waBiZJ08hd7',
  }
}
