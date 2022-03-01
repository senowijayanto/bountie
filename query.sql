CREATE TABLE transaksi (
	id INT(11) NOT NULL AUTO_INCREMENT,
	tanggal_order DATETIME NOT NULL,
	status ENUM ('lunas', 'pending') DEFAULT 'pending',
	tanggal_pembayaran DATETIME NOT NULL,
	PRIMARY KEY (id)
)ENGINE=InnoDB;

INSERT INTO transaksi (tanggal_order, status, tanggal_pembayaran)
VALUES 
	('2022-03-01 10:34:55', 'lunas', '2022-03-01 10:35:02'),
	('2022-03-01 10:36:05', 'lunas', '2022-03-01 10:37:45'),
	('2022-03-01 10:38:15', 'pending', '2022-03-01 10:39:22');

CREATE TABLE detail_transaksi (
	id INT(11) NOT NULL AUTO_INCREMENT,
	id_transaksi INT(11) NOT NULL,
	harga MEDIUMINT UNSIGNED,
	jumlah INT UNSIGNED,
	total BIGINT UNSIGNED,
	PRIMARY KEY (id)
)ENGINE=InnoDB ;

INSERT INTO detail_transaksi (id_transaksi, harga, jumlah, total)
VALUES 
	(1, 10000, 2, 20000),
	(1, 5000, 3, 15000),
	(2, 7500, 2, 15000),
	(2, 8000, 2, 16000),
	(2, 6000, 3, 18000),
	(3, 20000, 1, 20000),
	(3, 12000, 2, 24000);

SELECT dt.id, tr.tanggal_order, tr.status, tr.tanggal_pembayaran, dt.total, dt.jumlah FROM detail_transaksi dt 
LEFT JOIN transaksi tr ON dt.id_transaksi = tr.id