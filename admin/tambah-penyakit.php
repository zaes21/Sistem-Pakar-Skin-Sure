<?php
session_start();
include '../db.php';

if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

if (isset($_POST['simpan'])) {
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $deskripsi = $_POST['deskripsi'];
    $solusi = $_POST['solusi'];

    // Upload gambar
    $gambar = '';
    if ($_FILES['gambar']['name']) {
        $gambar = $_FILES['gambar']['name'];
        $tmp = $_FILES['gambar']['tmp_name'];
        move_uploaded_file($tmp, "../assets/" . $gambar);
    }

    mysqli_query($koneksi, "INSERT INTO penyakit (kode_penyakit, nama_penyakit, deskripsi, solusi, gambar)
    VALUES ('$kode', '$nama', '$deskripsi', '$solusi', '$gambar')");

    header("Location: data-penyakit.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Tambah Penyakit | Admin - Skin Sure</title>
  <link rel="stylesheet" href="../style.css">
</head>
<body>
<div class="container">
  <h2>Tambah Data Penyakit Kulit</h2>

  <form method="POST" enctype="multipart/form-data">
    <label>Kode Penyakit</label>
    <input type="text" name="kode" required>

    <label>Nama Penyakit</label>
    <input type="text" name="nama" required>

    <label>Deskripsi</label>
    <textarea name="deskripsi" rows="4" required></textarea>

    <label>Solusi</label>
    <textarea name="solusi" rows="4" required></textarea>

    <label>Upload Gambar (opsional)</label>
    <input type="file" name="gambar" accept="image/*">

    <button type="submit" name="simpan">Simpan</button>
  </form>

  <br><a href="data-penyakit.php">← Kembali</a>
</div>
</body>
</html>
