<?php
// Lakukan koneksi ke database (disesuaikan dengan konfigurasi Anda)
$conn = new mysqli('localhost', 'root', '', 'db_tickme');

// Periksa koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Ambil nilai dari parameter 'item_id'
if (isset($_GET['item_id'])) {
    $item_id = $_GET['item_id']; 

    // Query SQL untuk mendapatkan total harga dari list2_item2
    $sql_total_harga = "SELECT SUM(price*quantity) as total_harga FROM list2_item2 WHERE list2_id = '$item_id'";
    $result_total_harga = $conn->query($sql_total_harga);

    // Periksa apakah query total harga berhasil dieksekusi
    if ($result_total_harga) {
        // Ambil data total harga dari hasil kueri
        $row_total_harga = $result_total_harga->fetch_assoc();
        $total_harga = $row_total_harga['total_harga'];

        // Kirim respons dalam format JSON
        echo json_encode(array('success' => true, 'total_harga' => $total_harga));
        exit();
    } else {
        // Jika query total harga tidak berhasil dieksekusi
        echo json_encode(array('success' => false, 'error' => $conn->error));
        exit();
    }
}

// Tutup koneksi ke database
$conn->close();
?>
