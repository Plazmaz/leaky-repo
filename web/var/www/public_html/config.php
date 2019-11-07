<?php
    $dbms = 'mysql';
    $dbhost = 'localhost';
    $dbport = '';
    $dbname = 'main';
    $dbuser = 'root';
    $dbpasswd = 'pass123';	
    $connection = mysql_connect($dbhost, $dbuser, $dbpasswd) or die('Connection failed!');
?>