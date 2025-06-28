<?php
session_start();
include '../db.php';

// Proteksi admin
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

// Proses hapus aturan
if (isset($_GET['hapus'])) {
    $id = $_GET['hapus'];
    mysqli_query($koneksi, "DELETE FROM aturan_cf WHERE id_aturan = $id");
    header("Location: data-aturan.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Data Aturan CF | Admin - Skin Sure</title>
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
      <h2>🔗 Data Aturan CF</h2>
      <a class="btn" href="tambah-aturan.php">+ Tambah Aturan</a>
    </div>

    <table>
      <tr>
        <th>Penyakit</th>
        <th>Gejala</th>
        <th>Nilai CF</th>
        <th>Aksi</th>
      </tr>
      <?php
      $q = mysqli_query($koneksi, "
        SELECT a.id_aturan, p.nama_penyakit, g.nama_gejala, a.nilai_cf
        FROM aturan_cf a
        JOIN penyakit p ON a.id_penyakit = p.id_penyakit
        JOIN gejala g ON a.id_gejala = g.id_gejala
        ORDER BY p.nama_penyakit ASC
      ");
      while ($d = mysqli_fetch_array($q)) {
          echo "<tr>";
          echo "<td>{$d['nama_penyakit']}</td>";
          echo "<td>{$d['nama_gejala']}</td>";
          echo "<td>{$d['nilai_cf']}</td>";
          echo "<td>
            <a class='btn' href='edit-aturan.php?id={$d['id_aturan']}'>Edit</a>
            <a class='btn' href='?hapus={$d['id_aturan']}' onclick='return confirm(\"Hapus aturan ini?\")'>Hapus</a>
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
