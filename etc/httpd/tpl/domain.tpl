<VirtualHost *:81 >
    ServerName #domain#
    CustomLog /usr/local/apache2/logs/#domain#.access.log combined
    ErrorLog /usr/local/apache2/logs/#domain#.error.log
    DocumentRoot /var/www/#domain#
    DirectoryIndex index.php

    RewriteEngine On
    RewriteOptions InheritBefore

    <Directory /var/www/#domain#>
    Options -Indexes +FollowSymLinks +MultiViews
    AllowOverride All
    Require all granted
    </Directory>

    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_FILENAME} -f
    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_FILENAME} !-d
</VirtualHost>