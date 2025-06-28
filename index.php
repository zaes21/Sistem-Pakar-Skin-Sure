<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Skin Sure | Smart Skin Care</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #f4f6fa, #eef3f7);
      font-family: 'Poppins', sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      position: relative;
      overflow: hidden;
    }

    .bg-illustration {
      position: absolute;
      right: 0;
      bottom: 0;
      width: 480px;
      max-width: 50%;
      opacity: 0.95;
      z-index: 0;
    }

    .hero {
      background: #fff;
      padding: 60px;
      border-radius: 20px;
      box-shadow: 0 12px 24px rgba(0,0,0,0.08);
      text-align: center;
      max-width: 620px;
      width: 90%;
      z-index: 2;
      position: relative;
    }

    .hero h1 {
      font-size: 36px;
      color: #2c3e50;
      margin-bottom: 10px;
    }

    .hero p {
      font-size: 16px;
      color: #555;
      line-height: 1.6;
      margin-top: 10px;
    }

    .hero button {
      margin-top: 30px;
      padding: 12px 30px;
      background-color: #27ae60;
      color: #fff;
      border: none;
      border-radius: 10px;
      font-size: 16px;
      cursor: pointer;
      transition: 0.3s;
    }

    .hero button:hover {
      background-color: #219150;
    }

    .dokter-info {
      margin-top: 40px;
      font-size: 14px;
      text-align: left;
      background: #f9f9f9;
      padding: 16px;
      border-radius: 12px;
      line-height: 1.5;
      color: #444;
    }

    .dokter-info h4 {
      margin-bottom: 8px;
      color: #2c3e50;
    }
  </style>
</head>
<body>

  <!-- 🔥 Box utama -->
  <div class="hero">
    <h1>Welcome to <span style="color:#27ae60;">Skin Sure</span></h1>
    <p>“Kulit sehat bukan pilihan, tapi kebutuhan.”<br>
    Kenali gejala sejak dini dan jaga kesehatan kulitmu bersama <strong>Skin Sure</strong>.</p>

    <a href="login.php"><button>Login Sekarang</button></a>

    <!-- 🩺 Info Dokter -->
    <div class="dokter-info">
      <h4>👩‍⚕️ Konsultan Medis Kulit & Kelamin</h4>
      <p>Spesialis Kulit dan Kelamin<br>
      Pendidikan: Dokter Umum – Universitas Padjadjaran (Bandung)<br>
      Spesialis Ilmu Kulit & Kelamin – Universitas Indonesia</p>
    </div>
  </div>

  <!-- 🖼️ Ilustrasi Background -->
  <img src="assets/illustrations/Drawkit-Vector-Illustration-Medical-01.svg" alt="Background Medical" class="bg-illustration">

  <script src="script.js"></script>
</body>
</html>
