<?php
session_start();
include '../db.php';

if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

$id = $_GET['id'];
$data = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM penyakit WHERE id_penyakit = $id"));

if (!$data) {
    echo "Data tidak ditemukan.";
    exit;
}

if (isset($_POST['update'])) {
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    // Jangan encode HTML — biar bisa input tag <ul><li><br>
    $deskripsi = $_POST['deskripsi'];
    $solusi = $_POST['solusi'];
    $gambar_lama = $_POST['gambar_lama'];

    $gambar = $gambar_lama;
    if ($_FILES['gambar']['name']) {
        $gambar = $_FILES['gambar']['name'];
        move_uploaded_file($_FILES['gambar']['tmp_name'], "../assets/" . $gambar);
    }

    mysqli_query($koneksi, "UPDATE penyakit SET 
        kode_penyakit = '$kode',
        nama_penyakit = '$nama',
        deskripsi = '$deskripsi',
        solusi = '$solusi',
        gambar = '$gambar'
        WHERE id_penyakit = $id");

    header("Location: data-penyakit.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Penyakit | Admin - Skin Sure</title>
  <link rel="stylesheet" href="../style.css">
</head>
<body>
<div class="container">
  <h2>Edit Data Penyakit Kulit</h2>

  <form method="POST" enctype="multipart/form-data">
    <label>Kode Penyakit</label>
    <input type="text" name="kode" value="<?= $data['kode_penyakit']; ?>" required>

    <label>Nama Penyakit</label>
    <input type="text" name="nama" value="<?= $data['nama_penyakit']; ?>" required>

    <label>Deskripsi</label>
    <textarea name="deskripsi" rows="5" required><?= htmlspecialchars_decode($data['deskripsi']); ?></textarea>

    <label>Solusi</label>
    <textarea name="solusi" rows="6" required><?= htmlspecialchars_decode($data['solusi']); ?></textarea>

    <label>Upload Gambar Baru (kosongkan jika tidak diganti)</label>
    <input type="file" name="gambar" accept="image/*">
    <input type="hidden" name="gambar_lama" value="<?= $data['gambar']; ?>">

    <button type="submit" name="update">Update</button>
  </form>

  <br><a href="data-penyakit.php">← Kembali</a>
</div>
</body>
</html>
