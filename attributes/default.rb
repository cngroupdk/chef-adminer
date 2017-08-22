default['adminer']['dir_to_install'] = '/var/www/db'

default['adminer']['version_to_install'] = 'mysql_english'
default['adminer']['user']  = 'root'
default['adminer']['group'] = 'root'

default['adminer']['versions_available'] = {
  :mysql_english   => 'https://github.com/vrana/adminer/releases/download/v4.3.1/adminer-4.3.1-mysql-en.php',
  :mysql_intl      => 'https://github.com/vrana/adminer/releases/download/v4.3.1/adminer-4.3.1-mysql.php',
  :general_intl    => 'https://github.com/vrana/adminer/releases/download/v4.3.1/adminer-4.3.1.php',
  :general_english => 'https://github.com/vrana/adminer/releases/download/v4.3.1/adminer-4.3.1-en.php'
}

