## News Stand Demo using Codeigniter

This demo uses the following frameworks:

* composer (https://getcomposer.org/)
* Codeigniter (https://codeigniter.com/)
* Bootstrap (http://getbootstrap.com/)
* PHP Mailer (https://github.com/PHPMailer/PHPMailer)
* mPDF (http://www.mpdf1.com/mpdf/index.php)
### Installation

* $ curl -sS https://getcomposer.org/installer | php (or any form from https://getcomposer.org/doc/00-intro.md )
* $ git clone https://github.com/bruj0/codeigniter_demo
* $ cd codeigniter_demo/
* $ composer install
* Create a mysql DB and a user with rights to it:
```sql
CREATE DATABASE news;
CREATE USER 'newsuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON news.* TO 'newsuser'@'localhost';
FLUSH PRIVILEGES;
```
* Load the news.sql file to the database.
* Edit applications/config/database.php
```
'username' => 'newsuser',
'password' => 'password',
'database' => 'news',
```
* Configure apache as the following:
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