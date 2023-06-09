node default {
  file {'/root/README':
    ensure => file,
    content => 'Ceci est un fichier Readme',
    owner => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "Bienvenue sur ${fqdn}\n",
  }
}
node 'minetest.puppet.vm' {
  include role::minecraft_server
}
node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
