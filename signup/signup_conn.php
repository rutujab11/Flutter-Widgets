<?php

$conn=mysqli_connect("localhost","intern","Intern*(0","interns");

if($conn){
	echo "Connection established";
}
else{
	echo "failed";
}

$firstName=$_POST['firstName'];
$lastName=$_POST['lastName'];
$email=$_POST['email'];
$password=$_POST['password'];
$phoneNo=$__POST['phoneNo'];
$address=$_POST['address'];
$city=$_POST['city'];
$pincode=$__POST['pincode'];
$height=$__POST['height'];
$weight=$__POST['weight'];
$medicalCondition=$_POST['medicalCondition'];


$sql= "INSERT into rutuja(firstName, lastName, email, password, phoneNo, address, city, pincode, height, weight,  medicalCondition) values('".$firstName."','".$lastName."','".$email."','".$password."','".$phoneNo."','".$address."','".$city."','".$pincode."','".$height."','".$weight."','".$medicalCondition."')";
if(mysqli_query($conn,$sql)){
	echo "Record inserted successfully";
}
else{
	echo "record cannot be inserted";
}

?>

