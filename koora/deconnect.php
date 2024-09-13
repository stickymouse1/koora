<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Document sans titre</title>
</head>

<body>
<?php 

session_start();
$_SESSION['Login']="";
$_SESSION['Pwd']="";
session_unset();
session_destroy();
 echo ("<meta http-equiv='refresh' content='0;URL=cnx.php' />") ;
?>
</body>
</html>