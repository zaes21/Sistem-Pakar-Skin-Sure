<?php
session_start();
include '../db.php';

// Cek apakah admin sudah login
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel | Skin Sure</title>
    <link rel="stylesheet" href="../style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        .admin-menu {
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .bg-illustration {
            position: absolute;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            object-fit: cover;
            opacity: 0.1;
            z-index: 0;
            pointer-events: none;
        }


        .btn {
            background-color: #2c3e50;
            color: white;
            padding: 12px 18px;
            text-decoration: none;
            border-radius: 10px;
            font-weight: 600;
            transition: 0.3s;
            text-align: center;
        }

        .btn:hover {
            background-color: #1a252f;
        }

        .logout {
            background-color: #e74c3c;
        }

        .logout:hover {
            background-color: #c0392b;
        }


        .admin-menu a {
            display: block;
            background: #2c3e50;
            color: white;
            padding: 12px;
            border-radius: 8px;
            text-align: center;
            text-decoration: none;
            transition: 0.3s;
        }

        .admin-menu a:hover {
            background: #1a252f;
        }

        body {
            background: linear-gradient(to right, #f8fbfd, #eef3f8);
            font-family: 'Poppins', sans-serif;
            overflow-x: hidden;
            position: relative;
        }

        .container {
            max-width: 400px;
            margin: 80px auto;
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.06);
            z-index: 1;
            position: relative;
        }

    </style>
</head>
<body>
<div class="container">
  <h2 style="color:#2c3e50;">Selamat datang, Admin!</h2>
  <p style="margin-bottom: 20px;">Silakan pilih menu untuk mengelola data Skin Sure:</p>

  <div class="admin-menu">
    <a class="btn" href="data-penyakit.php">🦠 Kelola Data Penyakit</a>
    <a class="btn" href="data-gejala.php">📋 Kelola Data Gejala</a>
    <a class="btn" href="data-aturan.php">🧠 Kelola Aturan CF</a>
    <a class="btn logout" href="../logout.php">← Keluar</a>
  </div>
</div>

<img src="assets/illustrations/Drawkit-Vector-Illustration-Medical-17.svg" class="bg-illustration">

<script src="script.js"></script>
</body>
</html>
