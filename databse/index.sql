<?php

$host = 'localhost';
$db = 'it30b_lab_db';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host; dbname=$sub; charset=$charset";

$options = [
  PDO::ATTR_ERRMODE => PDO::EERMODE_EXEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
  PDO::ATTR_EMULATE_PREPARES => false,
  ];

  try{
      $pdo = new PDO($dsn,$user,$pass,$options);
      echo 'connection successful';
  }catch(PDOException $e){
    die("Database connection failed" . $e->getMessage());


  }
  
