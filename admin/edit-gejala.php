<?php
session_start();
include '../db.php';

// Proteksi admin
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

// Ambil data berdasarkan ID
if (!isset($_GET['id'])) {
    header("Location: data-gejala.php");
    exit;
}

$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM gejala WHERE id_gejala = $id");
$data = mysqli_fetch_assoc($query);

if (!$data) {
    echo "Data tidak ditemukan.";
    exit;
}

// Proses update
if (isset($_POST['update'])) {
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];

    mysqli_query($koneksi, "UPDATE gejala SET 
        kode_gejala = '$kode',
        nama_gejala = '$nama'
        WHERE id_gejala = $id");

    header("Location: data-gejala.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Edit Gejala | Admin - Skin Sure</title>
  <link rel="stylesheet" href="../style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    form {
      max-width: 600px;
      margin-top: 30px;
    }

    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
    }

    input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 8px;
      margin-top: 5px;
    }

    button {
      margin-top: 20px;
      padding: 10px 18px;
      background-color: #2c3e50;
      color: white;
      border: none;
      border-radius: 8px;
      cursor: pointer;
    }

    button:hover {
      background-color: #1a252f;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Edit Gejala</h2>

    <form method="POST">
      <label for="kode">Kode Gejala</label>
      <input type="text" name="kode" id="kode" value="<?= $data['kode_gejala']; ?>" required>

      <label for="nama">Nama Gejala</label>
      <input type="text" name="nama" id="nama" value="<?= $data['nama_gejala']; ?>" required>

      <button type="submit" name="update">Update Data</button>
    </form>

    <br><a href="data-gejala.php">← Kembali ke Data Gejala</a>
  </div>
  <script src="script.js"></script>
</body>
</html>
