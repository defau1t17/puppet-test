node slave1.puppet{
  file { '/usr/share/nginx/html/index.html':
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
}

node slave2.puppet{
  file { '/usr/share/nginx/html/index.php':
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
}


