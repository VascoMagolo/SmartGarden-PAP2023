<?php
require_once('DB_configTTN.php');

// Get the incoming information from the raw input
$data = file_get_contents("php://input");
$json = json_decode($data, true);

// Check for errors
if ($json === null) {
    die('Error decoding JSON');
}
if (!$conn) {
    die('Error connecting to the database');
}

$received_at = date('Y-m-d H:i:s');
echo $json;
echo "adadad";
// Application information
$end_device_ids = $json['end_device_ids'];
$device_id = mysqli_real_escape_string($conn, $end_device_ids['device_id']);  
$application_id = mysqli_real_escape_string($conn, $end_device_ids['application_ids']['application_id']);

// Payload information
$uplink_message = $json['uplink_message'];
$humidity = $uplink_message['decoded_payload']['Humidity'];
$temperature = $uplink_message['decoded_payload']['Temperature'];

// Prepare and execute the SQL statement
$stmt = mysqli_prepare($conn, "INSERT INTO data (Device_id, App_id, Date, Temperature, Humidity) VALUES (?, ?, ?, ?, ?)");
mysqli_stmt_bind_param($stmt, 'sssss', $device_id, $application_id, $received_at, $temperature, $humidity);
if (!mysqli_stmt_execute($stmt)) {
    die('Error executing SQL statement');
}

echo "1";
?>
