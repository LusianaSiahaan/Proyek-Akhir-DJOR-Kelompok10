
CREATE TABLE login (
username VARCHAR(50) NOT NULL, 
passwordd VARCHAR(50) NOT NULL);

INSERT INTO login(username, passwordd) VALUES ('grace.pjtn', 'grace1990');
INSERT INTO login(username, passwordd) VALUES ('djorrr', '123456789');
SELECT * FROM login WHERE username='grace.pjtn';

CREATE TABLE transaksi(
nomor_transaksi INT PRIMARY KEY,
tgl_parkir DATE, 
waktu_mulai, waktu_selesai TIME,
lama_parkir INT,
biaya_parkir LONG INT,

jeniskendaraan INT,
nomorslot INT,
slot_parkir CHAR,

CONSTRAINT 'fk_jenis_transaksi'
	FOREIGN KEY (jeniskendaraan) REFERENCES jenis_kendaraan(jenis)
	ON DELETE CASCADE
	ON UPDATE RESTRICT
	
CONSTRAINT 'fk_transaksi_lokasi'
	FOREIGN KEY (nomorslot, slot_parkir) REFERENCE lokasi_parkir(nomor_slot,slot)
	ON DELETE CASCADE
	ON UPDATE RESTRICT

)

CREATE TABLE jenis_kendaraan( 
jenis INT PRIMARY KEY,
nama_kendaraan VARCHAR(30)) 

DROP TABLE jenis_kendaraan

CREATE TABLE lokasi_parkir(
slot CHAR,
nomor_slot INT,
status_slot BOOLEAN,
lokasi_parkir_pk PRIMARY KEY (slot, nomor_slot));

DROP TABLE jenis_kendaraan
DROP TABLE lokasi_parkir
