<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}

// Ambil nama pengguna dari sesi
$username = $_SESSION['username'];

// Database Connection
$conn = new mysqli('localhost', 'root', '', 'db_tickme');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['item_id'])) {
    $item_id = $_GET['item_id'];

    // Mendapatkan user_id dari tabel 'user' berdasarkan username
    $user_id_query = "SELECT id FROM db_tickme.user WHERE username = '$username'";
    $user_id_result = $conn->query($user_id_query);

    if (!$user_id_result) {
        die("User ID query failed: " . $conn->error);
    }

    // cek apakah user_id ada
    if ($user_id_result->num_rows > 0) {
        // Ambil user_id dari hasil query
        $user_id_row = $user_id_result->fetch_assoc();
        $user_id_session = $user_id_row['id'];

        //  penghapusan dari tabel 'list2' di sini
        $delete_query = "DELETE FROM db_tickme.list2 WHERE list_id = '$item_id' AND user_id = '$user_id_session'";
        $delete_result = $conn->query($delete_query);

        if (!$delete_result) {
            die("Delete query failed: " . $conn->error);
        }

        // Redirect kembali ke halaman list setelah penghapusan
        header("Location: list.php");
        exit();
    } else {
        // Handle the case where the user_id doesn't exist in the 'user' table
        echo "User ID not found.";
    }
}
?>
