CREATE TABLE login (
nama_petugas VARCHAR(50) NOT NULL,
no_hp VARCHAR(12) NOT NULL,
username VARCHAR(50) NOT NULL, 
passwordd VARCHAR(50) NOT NULL);

DROP TABLE login;

INSERT INTO login(nama_petugas, no_hp, username, passwordd) VALUES ('Grace Panjaitan', '081289067854', 'grace.pjtn', 'grace1990');
INSERT INTO login(nama_petugas, no_hp, username, passwordd) VALUES ('Pemarkir DJOR', '082390876789', 'djorrr', '123456789');
SELECT * FROM login;

CREATE TABLE transaksi(
nomor_transaksi INT PRIMARY KEY,
nomor_plat CHAR(14),
tgl_parkir CHAR(10), 
jam_mulai INT,
menit_mulai INT,
jam_selesai INT,
menit_selesai INT,
lama_parkir INT,
biaya_parkir INT,
jeniskendaraan INT,
nomorslot CHAR(2),

CONSTRAINT fk_jenis_transaksi
	FOREIGN KEY (jeniskendaraan) REFERENCES jenis_kendaraan(no_jenis)
	ON DELETE CASCADE
	ON UPDATE RESTRICT,

CONSTRAINT fk_transaksi_lokasi
	FOREIGN KEY (nomorslot) REFERENCES lokasi_parkir(nomor_slot)
	ON DELETE CASCADE
	ON UPDATE RESTRICT
)
INSERT INTO transaksi(nomor_transaksi, nomor_plat, tgl_parkir, jam_mulai, menit_mulai, jam_selesai, menit_selesai, lama_parkir, biaya_parkir, jeniskendaraan, nomorslot) VALUES(1, 'BK 624 CE', '15-06-2020', 13, 40, 15, 30, 2, 20000, 1, 'A1'); 
INSERT INTO transaksi(nomor_transaksi, nomor_plat, tgl_parkir, jam_mulai, menit_mulai, jam_selesai, menit_selesai, lama_parkir, biaya_parkir, jeniskendaraan, nomorslot) VALUES(2, 'BK 1818 LA', '16-06-2020', 10, 25, 13, 30, 3, 40000, 2, 'B2'); 
SELECT * FROM transaksi;

CREATE TABLE jenis_kendaraan( 
no_jenis INT PRIMARY KEY,
nama_kendaraan VARCHAR(30)) 

INSERT INTO jenis_kendaraan(no_jenis, nama_kendaraan) VALUES(1, 'Motor');
INSERT INTO jenis_kendaraan(no_jenis, nama_kendaraan) VALUES(2, 'Mobil');
SELECT * FROM jenis_kendaraan;

CREATE TABLE lokasi_parkir(
nomor_slot CHAR(2),
status_slot BOOLEAN,
PRIMARY KEY (nomor_slot));

INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('A1', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('B2', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('A2', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('A3', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('A4', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('A5', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('A6', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('B1', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('B3', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('B4', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('B5', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('B6', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('C1', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('C4', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('C3', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('C5', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('C6', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('C2', TRUE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('D1', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('D2', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('D3', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('D4', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('D5', FALSE);
INSERT INTO lokasi_parkir(nomor_slot, status_slot) VALUES('D6', FALSE);
SELECT * FROM lokasi_parkir;
