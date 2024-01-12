node slave1.puppet{
  file { '/var/www/static' :
     ensure => 'directory',
  }
  file { '/var/www/static/index.html':
      ensure => file,
      content => '<html>
                    <head>
                      <title>Success!</title>
                    </head>
                      <body>
                        You Vagrantfile is fine if you can see this message.
                    </body>
                  </html>',
    }
  file { '/etc/nginx/sites-enabled/static.com':
      ensure => file,
      content => 'server {  
                  listen 80;
                  server_name 192.168.56.11;
                  root /var/www/static;
                  index index.html;
                }',
    }
}

node slave2.puppet{
  file { '/var/www/dymanic' :
     ensure => 'directory',
  }
  file { '/var/www/dymanic/index.php':
      ensure => file,
      content => '<html>
                    <head>
                      <title>Site is running PHP version <?= phpversion(); ?></title>
                    </head>
                  <body>
                    <?php
                      $limit = rand(1, 1000);
                      for ($i=0; $i<$limit; $i++){
                      echo "<p>Hello, world!</p>";
                      }
                    ?>
                  </body>
              </html>',
    }
  file { '/etc/nginx/sites-enabled/dynamic.com':
      ensure => file,
      content => 'server {  
                  listen 80;
                  server_name 192.168.56.12;
                  root /var/www/dymanic;
                  index index.php;
                }',
    }
}
