<?php
    $dbms = 'mysql';
    # Informative
    $dbhost = 'localhost';
    $dbport = '';
    # Informative
    $dbname = 'main';
    # Informative
    $dbuser = 'root';
    # Risk
    $dbpasswd = 'pass123';	
    $connection = mysql_connect($dbhost, $dbuser, $dbpasswd) or die('Connection failed!');
?>