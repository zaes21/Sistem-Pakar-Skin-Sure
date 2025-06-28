<?php
session_start();
include '../db.php';

// Proteksi admin
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

// Ambil data aturan berdasarkan ID
if (!isset($_GET['id'])) {
    header("Location: data-aturan.php");
    exit;
}

$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM aturan_cf WHERE id_aturan = $id");
$data = mysqli_fetch_assoc($query);

if (!$data) {
    echo "Data tidak ditemukan.";
    exit;
}

// Proses update
if (isset($_POST['update'])) {
    $id_penyakit = $_POST['penyakit'];
    $id_gejala = $_POST['gejala'];
    $cf = $_POST['cf'];

    mysqli_query($koneksi, "UPDATE aturan_cf SET 
        id_penyakit = '$id_penyakit',
        id_gejala = '$id_gejala',
        nilai_cf = '$cf'
        WHERE id_aturan = $id");

    header("Location: data-aturan.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Edit Aturan CF | Admin - Skin Sure</title>
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
    <h2>Edit Aturan CF</h2>

    <form method="POST">
      <label for="penyakit">Pilih Penyakit</label>
      <select name="penyakit" required>
        <option value="">-- Pilih Penyakit --</option>
        <?php
        $penyakit = mysqli_query($koneksi, "SELECT * FROM penyakit ORDER BY nama_penyakit ASC");
        while ($p = mysqli_fetch_array($penyakit)) {
            $selected = ($p['id_penyakit'] == $data['id_penyakit']) ? 'selected' : '';
            echo "<option value='{$p['id_penyakit']}' $selected>{$p['nama_penyakit']}</option>";
        }
        ?>
      </select>

      <label for="gejala">Pilih Gejala</label>
      <select name="gejala" required>
        <option value="">-- Pilih Gejala --</option>
        <?php
        $gejala = mysqli_query($koneksi, "SELECT * FROM gejala ORDER BY nama_gejala ASC");
        while ($g = mysqli_fetch_array($gejala)) {
            $selected = ($g['id_gejala'] == $data['id_gejala']) ? 'selected' : '';
            echo "<option value='{$g['id_gejala']}' $selected>{$g['nama_gejala']}</option>";
        }
        ?>
      </select>

      <label for="cf">Nilai CF</label>
      <input type="number" name="cf" min="0.1" max="1" step="0.1" value="<?= $data['nilai_cf']; ?>" required>

      <button type="submit" name="update">Update Aturan</button>
    </form>

    <br><a href="data-aturan.php">← Kembali ke Data Aturan</a>
  </div>
  <script src="script.js"></script>
</body>
</html>