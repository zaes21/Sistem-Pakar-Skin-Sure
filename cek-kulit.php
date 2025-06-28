<?php
session_start();
include 'db.php';

// Cek apakah user sudah login dan rolenya user
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'user') {
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Skin Sure | Cek Kesehatan Kulit</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #f4f7fb, #e9f1f9);
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 750px;
      margin: 60px auto;
      background: #fff;
      padding: 40px;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
    }

    h2 {
      color: #2c3e50;
      margin-bottom: 10px;
    }

    p {
      color: #555;
      margin-bottom: 20px;
    }

    .checkbox {
      background: #f8f9fa;
      border-radius: 10px;
      padding: 12px 16px;
      margin-bottom: 10px;
      box-shadow: 0 1px 3px rgba(0,0,0,0.05);
      display: flex;
      align-items: center;
      transition: background 0.2s;
    }

    .checkbox:hover {
      background: #eef2f5;
    }

    .checkbox input[type="checkbox"] {
      margin-right: 12px;
      transform: scale(1.2);
    }

    button {
      background-color: #27ae60;
      color: white;
      border: none;
      padding: 12px 24px;
      font-size: 16px;
      border-radius: 10px;
      cursor: pointer;
      margin-top: 20px;
    }

    button:hover {
      background-color: #219150;
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
  </style>
</head>
<body>

  <div class="container">
    <h2>🩺 Mulai Cek Kesehatan Kulitmu</h2>
    <p>Berikan tanda centang pada gejala yang kamu rasakan di bawah ini:</p>

    <form action="proses.php" method="POST">
      <div class="gejala-list">
        <?php
        $query = mysqli_query($koneksi, "SELECT * FROM gejala ORDER BY nama_gejala ASC");
        while ($data = mysqli_fetch_array($query)) {
          echo '<label class="checkbox">';
          echo '<input type="checkbox" name="gejala[]" value="' . $data['id_gejala'] . '">';
          echo $data['nama_gejala'];
          echo '</label>';
        }
        ?>
      </div>
      <button type="submit">🔍 Lihat Hasil Analisis</button>
    </form>

    <a href="logout.php">← Keluar</a>
  </div>

  <script src="script.js"></script>
</body>
</html>
