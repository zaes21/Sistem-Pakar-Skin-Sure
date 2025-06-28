<?php
session_start();
include 'db.php';

if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'user') {
    header("Location: login.php");
    exit;
}

// Pastikan data dari proses.php tersedia
if (!isset($_GET['id']) || !isset($_SESSION['hasil_tertinggi'])) {
    echo "Data hasil tidak tersedia.";
    exit;
}

$hasil = $_SESSION['hasil_tertinggi'];
$detail = $_SESSION['detail'];
$semua = $_SESSION['semua_cf'];
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Hasil Analisis | Skin Sure</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #f5faff, #ebf2f7);
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 760px;
      margin: 50px auto;
      background: #fff;
      padding: 40px;
      border-radius: 20px;
      box-shadow: 0 12px 30px rgba(0,0,0,0.05);
    }

    h2 {
      text-align: center;
      color: #2c3e50;
    }

    .hasil-tertinggi {
      color: #27ae60;
      text-align: center;
      font-size: 26px;
      margin-top: 10px;
    }

    .img-preview {
      display: block;
      max-width: 100%;
      margin: 20px auto;
      border-radius: 16px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
    }

    .progress-container {
      background-color: #eee;
      border-radius: 14px;
      height: 20px;
      width: 100%;
      margin: 15px 0;
      overflow: hidden;
    }

    .progress-bar {
      background-color: #27ae60;
      height: 100%;
      width: 0;
      border-radius: 14px;
      transition: width 1s ease;
    }

    ul {
      margin-top: 10px;
      padding-left: 20px;
    }

    p {
      line-height: 1.7;
      color: #444;
    }

    strong {
      color: #2c3e50;
    }

    a {
      display: inline-block;
      margin-top: 30px;
      color: #2c3e50;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }

    .section-title {
      margin-top: 30px;
      font-weight: 600;
      font-size: 18px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>🧪 Hasil Analisis Kulitmu</h2>

    <!-- Gambar penyakit -->
    <img src="assets/<?= $detail['gambar'] ?: 'default.jpg'; ?>" alt="Gambar Penyakit" class="img-preview">

    <h3 class="hasil-tertinggi"><?= $hasil['nama']; ?></h3>
    <p><strong>Tingkat Kepastian:</strong> <?= round($hasil['cf_total'] * 100); ?>%</p>

    <div class="progress-container">
      <div class="progress-bar" id="progressBar"></div>
    </div>

    <p class="section-title">📖 Deskripsi:</p>
    <p><?= $detail['deskripsi']; ?></p>

    <p class="section-title">🩺 Solusi:</p>
    <p><?= $detail['solusi']; ?></p>

    <hr>

    <p class="section-title">📝 Kemungkinan Lain:</p>
    <ul>
      <?php foreach ($semua as $item): ?>
        <?php if ($item['nama'] !== $hasil['nama']): ?>
          <li><?= $item['nama']; ?> – <?= round($item['cf_total'] * 100); ?>%</li>
        <?php endif; ?>
      <?php endforeach; ?>
    </ul>

    <br><a href="cek-kulit.php">← Cek Lagi</a>
  </div>
  <div class="progress-bar" id="progressBar" data-value="<?= round($hasil['cf_total'] * 100); ?>"></div>
  <script src="script.js"></script>

  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const cfValue = <?= round($hasil['cf_total'] * 100); ?>;
      const bar = document.getElementById("progressBar");
      if (bar) {
        setTimeout(() => {
          bar.style.width = cfValue + "%";
        }, 200);
      }
    });
  </script>
</body>
</html>
