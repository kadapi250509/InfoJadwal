-- 1. Tabel Users (Untuk Login)
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nama_lengkap VARCHAR(100),
    foto_profile VARCHAR(255) DEFAULT 'default.png'
);

-- 2. Tabel Jadwal (Untuk fitur jadwal.php)
CREATE TABLE jadwal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    hari ENUM('Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'),
    jam_mulai TIME,
    jam_selesai TIME,
    kegiatan VARCHAR(255),
    keterangan TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 3. Tabel Chat (Untuk fitur chat-ai.php jika kamu ingin menyimpan riwayat)
CREATE TABLE chat_history (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    pesan_user TEXT,
    respon_ai TEXT,
    waktu TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);