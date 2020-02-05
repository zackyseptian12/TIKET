CREATE TABLE penumpang(
    id_penumpang VARCHAR (50) NOT NULL,
    username VARCHAR (50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    nama_penumpang VARCHAR (100) NOT NULL,
    alamat_penumpang VARCHAR (100) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    jenis_kelamin VARCHAR (100) NOT NULL,
    telefone VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_penumpang)
    );
    
    CREATE TABLE pemesanan(
    id_pemesanan VARCHAR (20) NOT NULL,
    kode_pemesanan VARCHAR (50) NOT NULL,
    tanggal_pemesanan DATE NOT NULL,
    tempat_pemesanan VARCHAR (100) NOT NULL,
    id_pelanggan VARCHAR (100) NOT NULL,
    kode_kursi VARCHAR (100) NOT NULL,
    id_rute VARCHAR (100) NOT NULL,
    tujuan VARCHAR (100) NOT NULL,
    tanggal_berangkat DATE NOT NULL,
    jam_cekin TIME NOT NULL,
    jam_berangkat TIME NOT NULL,
    total_bayar INTEGER NOT NULL,
    id_petugas VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_pemesanan)
        );
        
        CREATE TABLE rute(
    id_rute VARCHAR (100) NOT NULL,
    tujuan VARCHAR (50) NOT NULL,
    rute_awal VARCHAR(100) NOT NULL,
    rute_akhir VARCHAR (100) NOT NULL,
    harga INTEGER NOT NULL,
    id_transportasi VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_rute)
            );
            
            CREATE TABLE petugas(
    id_petugas VARCHAR (100) NOT NULL,
    username VARCHAR (50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    nama_petugas VARCHAR (100) NOT NULL,
    id_level VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_petugas)
                );
                
          CREATE TABLE level(
    id_level VARCHAR (100) NOT NULL,
    nama_level VARCHAR (100) NOT NULL,

    PRIMARY KEY (id_level)
              );
              
              CREATE TABLE tranportasi(
    id_transportasi VARCHAR (100) NOT NULL,
    kode VARCHAR (50) NOT NULL,
    jumlah_kursi INTEGER NOT NULL,
    keterangan VARCHAR (100) NOT NULL,
    id_type_transportasi VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_transportasi)
                  );
                  
                  CREATE TABLE type_transportasi(
    id_type_transportasi VARCHAR (100) NOT NULL,
    nama_type VARCHAR (50) NOT NULL,
    keterangan VARCHAR(100) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id_type_transportasi)
                      );