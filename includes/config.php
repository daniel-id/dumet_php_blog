<?php 
global $connect;

$dbhost		= "localhost";
$dbuser		= "root";
$dbpass		= "";
$dbname		= "dumet_sec-9_blog";

$connect	= mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

/** CEK KONEKSI **/
if(!$connect) {
    die("Connection failed: ".mysqli_connect_error());
}
?>