<?php
// connectivity k liye un & pwd
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
//$a = date("y/m/d");
//form se values lena

$itemn = $_GET["iname"];
print "$itemn";
$quantq = $_GET["qtyq"];
print "$quantq";
if(!($quantq == NULL))
{
if(is_numeric($quantq))
{

//form wali values store karke rakhna for another i.e billing table
$useritemname = "$itemn";

// establish connection
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
// query to fetch yesterday's stock

$sqlselect = " SELECT * FROM storec ";
mysql_select_db('mess');
$select = mysql_query( $sqlselect, $conn );
if(! $select )
{
  die('Could not get data: ' . mysql_error());
}

// storing db values in temporary variables

while($row = mysql_fetch_array($select, MYSQL_ASSOC))
{
$tempitemno   = $row['item_number'];
}

//testing purpose

echo '<br>';
print "qty is $quantq";


$sql = " UPDATE storec SET minvalue = $quantq WHERE item_name = '$itemn' ";
mysql_select_db('mess');
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not insert data: ' . mysql_error());
}
else
{
//echo "Entered data successfully\n";
echo "
<script>
      window.location.href = 'afterlc.html';
    </script> ";
mysql_close($conn);
}
}
else
{
echo " <script>
      window.location.href = 'lcerror.html';
    </script> ";

}
}
else
{
echo " <script>
      window.location.href = 'lcerror.html';
    </script> ";

}

?>