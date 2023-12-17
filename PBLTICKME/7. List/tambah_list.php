<?php
session_start();

// Periksa apakah pengguna sudah login
if (!isset($_SESSION['username'])) {
    // Jika tidak, redirect ke halaman login
    header("Location: login.php");
    exit();
}

// Ambil nama pengguna dari sesi
$username = $_SESSION['username'];

// Ambil data dari formulir
$user_id = isset($_POST['user_id']) ? $_POST['user_id'] : '';
$name = isset($_POST['name']) ? $_POST['name'] : '';
$date = isset($_POST['date']) ? $_POST['date'] : '';

// Konfigurasi koneksi ke database
$servername = "localhost";
$username_db = "root";
$password_db = "";
$dbname = "db_tickme";

// Buat koneksi ke database
$conn = new mysqli($servername, $username_db, $password_db, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Siapkan SQL untuk menyimpan data ke dalam tabel dan tidak lupa pencegahan sql injectionya
$sql = "INSERT INTO list2 (user_id, name, date) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);

// Bind parameter ke prepared statement
$stmt->bind_param("iss", $user_id, $name, $date);

// Eksekusi SQL
if ($stmt->execute()) { 
    header("Location: list.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Tutup koneksi ke database
$stmt->close();
$conn->close();
?>
