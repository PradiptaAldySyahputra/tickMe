<?php
$conn = new mysqli('localhost', 'root', '', 'db_tickme');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Pastikan bahwa formulir dikirimkan dengan metode POST

    // Ambil nilai id, name, price, dan quantity dari formulir
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $price = isset($_POST['price']) ? $_POST['price'] : '';
    $quantity = isset($_POST['quantity']) ? $_POST['quantity'] : '';

    // Cari list_id dari tabel list2 berdasarkan name
    $list_id_query = "SELECT list_id FROM db_tickme.list2 WHERE name = '$name'";
    $list_id_result = $conn->query($list_id_query);

    if (!$list_id_result) {
        die("Error getting list_id: " . $conn->error);
    }

    // Inisialisasi variabel list_id
    $list_id = '';

    // Periksa apakah ada hasil
    if ($list_id_result->num_rows > 0) {
        $list_id_row = $list_id_result->fetch_assoc();
        $list_id = $list_id_row['list_id'];

        // Setelah mendapatkan list_id, kirimkan data ke tabel list2_item2
        $insert_query = "INSERT INTO db_tickme.list2_item2 (list2_id, item2_id, price, quantity) VALUES ('$list_id', '$id', '$price', '$quantity')";

        if ($conn->query($insert_query) === TRUE) {
            header("Location: notif.php");
            exit();
        } else {
            echo "Error: " . $insert_query . "<br>" . $conn->error;
        }
    } else {
        echo "List ID not found for name: $name";
    }
}
?>
