<?php
include("cadinfo.html");
include("addinfo.html");

$batid=$_GET["bid"];
$first=$_GET["fname"];
$last=$_GET["lname"];
$father=$_GET["faname"];
$mother=$_GET["mname"];
$cage=$_GET["agee"];
$cityy=$_GET["ct"];
$sta=$_GET["st"];
$dist=$_GET["dis"];
$year=$_GET["yoj"];
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$sql = "INSERT INTO cadetinfo (batchid,firstname,lastname,fathersname,mothersname,age,city,state,district,yearofjoining) VALUES ('" . $batid . "'," . $first . ",'" . $last . "','" . $father . "','" . $mother .   "','" . $cage .  "','" . $cityy .  "','" . $sta .  "','" . $dist .  "','" . $year ."');";

mysql_select_db('mess');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "Batch Id :{$row['batchid']}  <br> ".
         "First Name : {$row['firstname']} <br> ".
"Last Name : {$row['lastname']} <br> ".
"Father's Name : {$row['fathersname']} <br> ".
"Mother's Name : {$row['mothersname']} <br> ".
"Age : {$row['age']} <br> ".
"City : {$row['city']} <br> ".
"State : {$row['state']} <br> ".
"District : {$row['district']} <br> ".
"Year of Joining : {$row['yearofjoining']} <br> ".
         "--------------------------------<br>";   
     
} 
 echo " <script>
      window.location.href = 'afterinsert.html';
    </script>"; 

mysql_close($conn);

?>