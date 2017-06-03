<?php

require 'connection.php';
$conn	= Connect();
$name	= $conn->real_escape_string($_POST['name']);
$city	= $conn->real_escape_string($_POST['city']);
$phone	= $_POST['phone'];
$bloodgrp = $conn->real_escape_string($_POST['bloodgrp']);
$rh		= $conn->real_escape_string($_POST['rh']);
$db 	= "bankreg";
$query	= "INSERT into $db (name,city,phone,bloodgrp,rh) VALUES ('" . $name . "','" . $city . "','" . $phone . "','" . $bloodgrp . "','" . $rh . "')";
$success = $conn->query($query);

if (!$success) {
    die("Couldn't enter data: ".$conn->error);
}
echo "Thank You For Registering! We will be contacting you shortly.<br>";
