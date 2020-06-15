CREATE TABLE login (
nama_petugas VARCHAR(50) NOT NULL,
no_hp VARCHAR(13) NOT NULL,
username VARCHAR(50) NOT NULL, 
passwordd VARCHAR(50) NOT NULL);


INSERT INTO login(nama_petugas, username, passwordd) VALUES ('Grace Panjaitan', 'grace.pjtn', 'grace1990');
INSERT INTO login(nama_petugas, username, passwordd) VALUES ('Pemarkir DJOR', 'djorrr', '123456789');

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
nomorslot char(2),

CONSTRAINT fk_jenis_transaksi
	FOREIGN KEY (jeniskendaraan) REFERENCES jenis_kendaraan(jenis)
	ON DELETE CASCADE
	ON UPDATE RESTRICT,

CONSTRAINT fk_transaksi_lokasi
	FOREIGN KEY (nomorslot) REFERENCES lokasi_parkir(nomor_slot)
	ON DELETE CASCADE
	ON UPDATE RESTRICT
)

CREATE TABLE jenis_kendaraan( 
no_jenis INT PRIMARY KEY,
nama_kendaraan VARCHAR(30)) 

CREATE TABLE lokasi_parkir(
nomor_slot char(2),
status_slot BOOLEAN,
PRIMARY KEY (nomor_slot));
)
