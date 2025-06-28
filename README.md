# 🧴 Skin Sure - Web-Based Expert System for Infectious Skin Disease Diagnosis

**Skin Sure** adalah sistem pakar berbasis web yang dirancang untuk membantu pengguna dalam mendiagnosa penyakit kulit menular berdasarkan gejala yang dialami. Sistem ini menggunakan metode **Certainty Factor (CF)** untuk menghitung tingkat kepastian terhadap suatu penyakit dan memberikan hasil diagnosa yang disertai gambar serta solusi penanganan awal.

🔗 **GitHub Repository**: [https://github.com/zaes21/Sistem-Pakar-Skin-Sure](https://github.com/zaes21/Sistem-Pakar-Skin-Sure)

---

## 📌 Fitur Utama

- 🔐 Login dan Registrasi untuk User & Admin  
- 📋 Diagnosa Penyakit Kulit Menular berdasarkan Gejala  
- 📊 Perhitungan Nilai Keyakinan menggunakan Certainty Factor (CF)  
- 🖼️ Gambar Penyakit dan Deskripsi Detail  
- 🧑‍⚕️ Informasi Dokter Spesialis Kulit dan Kelamin  
- 🔧 Panel Admin untuk Kelola Gejala, Penyakit, dan Aturan CF  
- 🎨 Desain Antarmuka Modern dan Responsif  

---

## 🧪 Metode Diagnosa - Certainty Factor (CF)

Metode **Certainty Factor** digunakan untuk merepresentasikan tingkat kepastian pakar terhadap suatu hubungan antara gejala dan penyakit. Nilai CF akan dihitung berdasarkan gejala yang dipilih pengguna dan akan menampilkan daftar kemungkinan penyakit beserta persentase tingkat keyakinan.

---

## 🛠️ Teknologi yang Digunakan

| Komponen   | Teknologi                |
|------------|--------------------------|
| Frontend   | HTML, CSS, JavaScript    |
| Backend    | PHP (Native)             |
| Database   | MySQL                    |
| Editor     | Visual Studio Code       |
| Server     | XAMPP (Localhost)        |

---

## 📁 Struktur Direktori

<pre> Sistem-Pakar-Skin-Sure/ 
   ├── <b>assets/</b> # Gambar penyakit, file CSS, dan JS 
   ├── <b>admin/</b> # Halaman admin (kelola gejala, penyakit, aturan CF) 
   ├── <b>user/</b> # Halaman user (form diagnosa, hasil) 
   ├── <b>koneksi.php</b> # File koneksi database 
   ├── <b>login.php</b> # Form login pengguna 
   ├── <b>register.php</b> # Form registrasi user 
   ├── <b>proses.php</b> # Perhitungan CF berdasarkan input gejala 
   ├── <b>hasil.php</b> # Hasil diagnosa yang ditampilkan ke user 
   └── <b>skin_sure.sql</b> # File SQL untuk struktur dan data awal database </pre>


---

---

## 🧑‍⚕️ Tentang Dokter dalam Sistem

- Dokter Umum – Fakultas Kedokteran Universitas Padjadjaran  
- Spesialis Kulit dan Kelamin – Fakultas Kedokteran Universitas Indonesia  

Tokoh dokter ini ditampilkan dalam sistem sebagai bentuk edukasi dan representasi ahli medis dalam fitur konsultasi awal. Informasi ini tidak dimaksudkan sebagai pengganti konsultasi medis secara langsung.

---

## ⚠️ Disclaimer

Sistem ini hanya digunakan untuk **diagnosa awal berbasis gejala** dan **tidak menggantikan peran dokter**.  
Untuk penanganan lanjutan, konsultasikan langsung ke dokter kulit profesional.

---

## 👨‍💻 Pengembang

**Andika Eka Sastya Putra**  
Institut Teknologi Garut  
Dosen Pembimbing: *Fitri Nuraeni, S.Kom., M.Kom*

---

## 📄 Lisensi

Proyek ini bersifat **open-source** dan ditujukan untuk **pembelajaran akademik**.  
Bebas digunakan dan dimodifikasi dengan menyertakan atribusi yang sesuai.

---
