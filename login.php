<?php
session_start();
include 'db.php';

// Login
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $q = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password='$password'");
    $data = mysqli_fetch_assoc($q);

    if ($data) {
        $_SESSION['username'] = $data['username'];
        $_SESSION['role'] = $data['role'];

        if ($data['role'] === 'admin') {
            header("Location: admin/index.php");
        } else {
            header("Location: cek-kulit.php");
        }
        exit;
    } else {
        $error = "Login gagal! Username atau password salah.";
    }
}

// Registrasi
if (isset($_POST['register'])) {
    $username = $_POST['reg_username'];
    $password = $_POST['reg_password'];

    $cek = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username'");
    if (mysqli_num_rows($cek) > 0) {
        $error = "Username sudah digunakan.";
    } else {
        mysqli_query($koneksi, "INSERT INTO user (username, password, role) VALUES ('$username', '$password', 'user')");
        $success = "Registrasi berhasil! Silakan login.";
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Login - Skin Sure</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      background: linear-gradient(135deg, #eafaf1, #f7fbfc);
      font-family: 'Poppins', sans-serif;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
    }

    .bg-illustration {
      position: absolute;
      top: 0;
      left: 0;
      width: 100vw;
      height: 100vh;
      object-fit: cover;
      z-index: 0;
      opacity: 0.1;
      pointer-events: none;
    }


    .login-container {
      background: #fff;
      padding: 40px 30px;
      border-radius: 20px;
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.08);
      width: 100%;
      max-width: 420px;
      position: relative;
      z-index: 2;
    }

    h2 {
      text-align: center;
      color: #2c3e50;
      margin-bottom: 20px;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 12px;
      margin-bottom: 16px;
      border: 1px solid #ccc;
      border-radius: 10px;
      background-color: #fafafa;
      font-size: 14px;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: #27ae60;
      color: white;
      border: none;
      border-radius: 10px;
      font-weight: bold;
      cursor: pointer;
      transition: 0.3s;
    }

    button:hover {
      background-color: #219150;
    }

    .toggle {
      text-align: center;
      margin-top: 15px;
      font-size: 14px;
    }

    .toggle a {
      color: #2c3e50;
      font-weight: 600;
      text-decoration: none;
    }

    .message {
      text-align: center;
      color: red;
      margin-bottom: 10px;
    }

    .success {
      color: green;
    }
  </style>
</head>
<body>

  <!-- 🔐 Login Box -->
  <div class="login-container" id="loginBox">
    <h2>Login ke Skin Sure</h2>
    <?php if (isset($error)) echo "<p class='message'>$error</p>"; ?>
    <?php if (isset($success)) echo "<p class='message success'>$success</p>"; ?>
    <form method="POST">
      <input type="text" name="username" placeholder="Username" required>
      <input type="password" name="password" placeholder="Password" required>
      <button type="submit" name="login">Login</button>
    </form>
    <div class="toggle">
      Belum punya akun? <a href="#" onclick="toggleForm()">Daftar di sini</a>
    </div>
  </div>

  <!-- 📝 Register Box -->
  <div class="login-container" id="registerBox" style="display:none;">
    <h2>Daftar Akun Baru</h2>
    <form method="POST">
      <input type="text" name="reg_username" placeholder="Username Baru" required>
      <input type="password" name="reg_password" placeholder="Password" required>
      <button type="submit" name="register">Daftar</button>
    </form>
    <div class="toggle">
      Sudah punya akun? <a href="#" onclick="toggleForm()">Login di sini</a>
    </div>
  </div>

  <!-- 🖼️ Ilustrasi -->
  <img src="assets/illustrations/Drawkit-Vector-Illustration-Medical-17.svg" alt="Login Illustration" class="bg-illustration">

  <script>
    function toggleForm() {
      const login = document.getElementById("loginBox");
      const register = document.getElementById("registerBox");
      login.style.display = login.style.display === "none" ? "block" : "none";
      register.style.display = register.style.display === "none" ? "block" : "none";
    }
  </script>
</body>
</html>
