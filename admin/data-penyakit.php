<?php
session_start();
include '../db.php';

// Proteksi akses admin
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

// Proses hapus jika ada ?hapus=id
if (isset($_GET['hapus'])) {
    $id = $_GET['hapus'];
    mysqli_query($koneksi, "DELETE FROM penyakit WHERE id_penyakit = $id");
    header("Location: data-penyakit.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Kelola Penyakit | Admin - Skin Sure</title>
  <link rel="stylesheet" href="../style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    table, th, td {
      border: 1px solid #ccc;
    }

    th, td {
      padding: 10px;
      text-align: left;
    }

    a.btn {
      padding: 8px 14px;
      background: #2c3e50;
      color: #fff;
      border-radius: 6px;
      text-decoration: none;
      margin-right: 5px;
    }

    a.btn:hover {
      background: #1a252f;
    }

    .top-bar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 15px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="top-bar">
      <h2>📋 Data Penyakit Kulit</h2>
      <a class="btn" href="tambah-penyakit.php">+ Tambah Penyakit</a>
    </div>

    <table>
      <tr>
        <th>Kode</th>
        <th>Nama Penyakit</th>
        <th>Deskripsi</th>
        <th>Solusi</th>
        <th>Aksi</th>
      </tr>
      <?php
      $q = mysqli_query($koneksi, "SELECT * FROM penyakit ORDER BY kode_penyakit ASC");
      while ($d = mysqli_fetch_array($q)) {
          echo "<tr>";
          echo "<td>{$d['kode_penyakit']}</td>";
          echo "<td>{$d['nama_penyakit']}</td>";
          echo "<td>{$d['deskripsi']}</td>";
          echo "<td>{$d['solusi']}</td>";
          echo "<td>
            <a class='btn' href='edit-penyakit.php?id={$d['id_penyakit']}'>Edit</a>
            <a class='btn' href='?hapus={$d['id_penyakit']}' onclick='return confirm(\"Hapus data ini?\")'>Hapus</a>
          </td>";
          echo "</tr>";
      }
      ?>
    </table>

    <br><a href="index.php">← Kembali ke Dashboard</a>
  </div>
  <script src="script.js"></script>
</body>
</html>
