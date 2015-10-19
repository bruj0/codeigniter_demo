## News Stand Demo using Codeigniter

This demo uses the following frameworks:

* composer (https://getcomposer.org/)
* Codeigniter (https://codeigniter.com/)
* Bootstrap (http://getbootstrap.com/)

### Installation

1. $ curl -sS https://getcomposer.org/installer | php (or any form from https://getcomposer.org/doc/00-intro.md )
2. $ git clone https://github.com/bruj0/codeigniter_demo
3. $ cd codeigniter_demo/
4. $ composer install
5. Create a mysql DB and a user with rights to it.
7. Load the news.sql file to the database.
6. Edit applications/config/database.php
```
'username' => '',
'password' => '',
'database' => '',
```
8. Configure apache as the following:
```
<VirtualHost IP:80>

<Directory PATH_TO/codeigniter_demo/public_html>
    AllowOverride All
    Allow from all
</Directory>

ServerName localhost
DocumentRoot PATH_TO/codeigniter_demo/public_html
</VirtualHost>
```