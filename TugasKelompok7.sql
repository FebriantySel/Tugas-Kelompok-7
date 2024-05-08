create database tugasklp7;

use tugasklp7;

-- Membuat tabel Siswa
CREATE TABLE Siswa (
    ID_Siswa INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Siswa VARCHAR(255) NOT NULL,
    Tanggal_Lahir DATE,
    Alamat VARCHAR(255)
);

-- Membuat tabel Kelas
CREATE TABLE Kelas (
    ID_Kelas INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Kelas VARCHAR(50) NOT NULL,
    Tingkat VARCHAR(20)
);

-- Membuat tabel Mata_Pelajaran
CREATE TABLE Mata_Pelajaran (
    ID_Mata_Pelajaran INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Mata_Pelajaran VARCHAR(100) NOT NULL,
    Deskripsi TEXT
);

-- Membuat tabel Nilai
CREATE TABLE Nilai (
    ID_Nilai INT AUTO_INCREMENT PRIMARY KEY,
    ID_Siswa INT,
    ID_Mata_Pelajaran INT,
    Nilai DECIMAL(5, 2),
    FOREIGN KEY (ID_Siswa) REFERENCES Siswa(ID_Siswa),
    FOREIGN KEY (ID_Mata_Pelajaran) REFERENCES Mata_Pelajaran(ID_Mata_Pelajaran)
);

-- Memasukkan data ke dalam tabel Siswa
INSERT INTO Siswa (Nama_Siswa, Tanggal_Lahir, Alamat) VALUES
('Taruna', '2005-03-15', 'Jl. Merdeka No. 10'),
('Zein', '2004-07-21', 'Jl. Gajah Mada No. 5'),
('Febrianty', '2005-01-10', 'Jl. Pahlawan No. 8'),
('Nabila', '2004-01-23', 'Jl. Sudirman No. 12'),
('Eka', '2005-06-18', 'Jl. Diponegoro No. 15');

-- Memasukkan data ke dalam tabel Kelas
INSERT INTO Kelas (Nama_Kelas, Tingkat) VALUES
('Kelas 1', '1'),
('Kelas 2', '2'),
('Kelas 3', '3'),
('Kelas 4', '4'),
('Kelas 5', '5');

-- Memasukkan data ke dalam tabel Mata_Pelajaran
INSERT INTO Mata_Pelajaran (Nama_Mata_Pelajaran, Deskripsi) VALUES
('Matematika', 'Mata pelajaran mengenai hitungan'),
('Bahasa Indonesia', 'Mata pelajaran mengenai bahasa'),
('IPA', 'Mata pelajaran mengenai ilmu pengetahuan alam'),
('IPS', 'Mata pelajaran mengenai ilmu pengetahuan sosial'),
('Bahasa Inggris', 'Mata pelajaran mengenai bahasa internasional');

-- Memasukkan data ke dalam tabel Nilai
INSERT INTO Nilai (ID_Siswa, ID_Mata_Pelajaran, Nilai) VALUES
(1, 1, 85),
(1, 2, 90),
(1, 3, 88),
(2, 1, 90),
(2, 2, 92);
