<?php
include "connect.php";
$zone = $_POST['zone']; //เก็บในตัวแปรก่อนแล้วค่อยเอาค่าตัวแปรไปใช้ใน values

$sql = "INSERT INTO tbl_smartfarm (zone, board, temp, humi, dmy) 
VALUES ('$zone', '$_POST[board]', '$_POST[temp]', '$_POST[humi]', now())";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>