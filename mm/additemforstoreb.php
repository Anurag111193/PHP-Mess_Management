<?php
$newi = $_POST["newitem"];
if(!($newi == NULL))
{
if(preg_match("/^[A-Za-z\\- \']+$/",$newi))
//if(!(is_numeric($newi)))
{
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
//$sqlnew = "INSERT INTO storec //(item_name,quantity_q,quantity_k,consumed_q,consumed_k,remaining_q,remaining_k, //cost//_perkg) VALUES ($new,"","","","","","",""); ";
//$countnew = 0;

$co = "SELECT COUNT(item_name) FROM storeb";
mysql_select_db('mess');
$countval = mysql_query( $co, $conn );
if(! $countval)
{
  die('Could not insert: ' . mysql_error());
}
$countnew = $co + 1;
echo "$countnew";
echo "$newi";
$sqlnew = "INSERT INTO storeb ".
       "(item_name,quantity_q, quantity_k, consumed_q, consumed_k, remaining_q, remaining_k, cost_perkg) ".
       "VALUES('$newi',0,0,0,0,0,0,0)";
echo "itemname" ;
echo " <script>
    window.location.href = 'storebadded.html';
  </script>"; 

mysql_select_db('mess');
$upval = mysql_query( $sqlnew, $conn );
if(! $upval )
{
  die('Could not insert: ' . mysql_error());
}
//echo '<br><br>inserted successfully<br><br>';
echo '<a href = "index.html"><input type = "button" style="width:70;height:50" name = "btnhome" value = "परत"></a>';
  
//echo "Fetched data successfully\n";


}
else
{
echo " <script>
      window.location.href = 'stberror.html';
    </script> ";
}

}
else
{
echo " <script>
      window.location.href = 'stberror.html';
    </script> ";
}

mysql_close($conn);

?>