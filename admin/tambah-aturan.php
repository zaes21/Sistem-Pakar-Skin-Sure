<?php
session_start();
include '../db.php';

// Proteksi admin
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

// Proses simpan
if (isset($_POST['simpan'])) {
    $id_penyakit = $_POST['penyakit'];
    $id_gejala = $_POST['gejala'];
    $cf = $_POST['cf'];

    mysqli_query($koneksi, "INSERT INTO aturan_cf (id_penyakit, id_gejala, nilai_cf)
                            VALUES ('$id_penyakit', '$id_gejala', '$cf')");

    header("Location: data-aturan.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Tambah Aturan CF | Admin - Skin Sure</title>
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

    select, input[type="number"] {
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
    <h2>+ Tambah Aturan CF</h2>

    <form method="POST">
      <label for="penyakit">Pilih Penyakit</label>
      <select name="penyakit" required>
        <option value="">-- Pilih Penyakit --</option>
        <?php
        $penyakit = mysqli_query($koneksi, "SELECT * FROM penyakit ORDER BY nama_penyakit ASC");
        while ($p = mysqli_fetch_array($penyakit)) {
            echo "<option value='{$p['id_penyakit']}'>{$p['nama_penyakit']}</option>";
        }
        ?>
      </select>

      <label for="gejala">Pilih Gejala</label>
      <select name="gejala" required>
        <option value="">-- Pilih Gejala --</option>
        <?php
        $gejala = mysqli_query($koneksi, "SELECT * FROM gejala ORDER BY nama_gejala ASC");
        while ($g = mysqli_fetch_array($gejala)) {
            echo "<option value='{$g['id_gejala']}'>{$g['nama_gejala']}</option>";
        }
        ?>
      </select>

      <label for="cf">Nilai Certainty Factor (CF)</label>
      <input type="number" name="cf" min="0.1" max="1" step="0.1" required>

      <button type="submit" name="simpan">Simpan Aturan</button>
    </form>

    <br><a href="data-aturan.php">← Kembali ke Data Aturan</a>
  </div>
  <script src="script.js"></script>
</body>
</html>
