<?php
session_start();
include 'db.php';

// Ambil semua data gejala yang dipilih user
$gejala_dipilih = isset($_POST['gejala']) ? $_POST['gejala'] : [];

if (count($gejala_dipilih) === 0) {
    echo "Tidak ada gejala yang dipilih.";
    exit;
}

$data_cf = []; // Untuk semua penyakit dan nilai CF-nya

// Ambil semua penyakit
$penyakit = mysqli_query($koneksi, "SELECT * FROM penyakit");

while ($p = mysqli_fetch_assoc($penyakit)) {
    $id_penyakit = $p['id_penyakit'];
    $kode = $p['kode_penyakit'];
    $nama = $p['nama_penyakit'];

    // Ambil aturan CF untuk penyakit ini
    $aturan = mysqli_query($koneksi, "SELECT * FROM aturan_cf WHERE id_penyakit = $id_penyakit");

    $cf_combine = 0;

    while ($a = mysqli_fetch_assoc($aturan)) {
        if (in_array($a['id_gejala'], $gejala_dipilih)) {
            $cf = $a['nilai_cf'];
            // CF Combine (versi sederhana)
            $cf_combine = $cf_combine + $cf * (1 - $cf_combine);
        }
    }

    // Simpan hasilnya
    if ($cf_combine > 0) {
        $data_cf[] = [
            'id_penyakit' => $id_penyakit,
            'kode' => $kode,
            'nama' => $nama,
            'cf_total' => $cf_combine
        ];
    }
}

// Urutkan berdasarkan nilai CF terbesar
usort($data_cf, function ($a, $b) {
    return $b['cf_total'] <=> $a['cf_total'];
});

// Ambil hasil tertinggi
$hasil_tertinggi = $data_cf[0];
$id_penyakit = $hasil_tertinggi['id_penyakit'];

// Detail penyakit dari tabel
$d_detail = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM penyakit WHERE id_penyakit = $id_penyakit"));

// Simpan ke session
$_SESSION['hasil_tertinggi'] = $hasil_tertinggi;
$_SESSION['detail'] = $d_detail;
$_SESSION['semua_cf'] = $data_cf;

// Redirect
header("Location: hasil.php?id=" . $id_penyakit);
exit;
?>
