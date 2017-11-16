CREATE TABLE maskapai (
    id_maskapai       INTEGER NOT NULL,
    id_pesawat        INTEGER NOT NULL,
    nama_maskapi      VARCHAR2(25),
    alamat_maskapai   VARCHAR2(25)
);

ALTER TABLE maskapai ADD CONSTRAINT maskapai_pk PRIMARY KEY ( id_maskapai );


CREATE TABLE bandara (
    id_bandara       INTEGER NOT NULL,
    nama_bandara     VARCHAR2(25),
    alamat_bandara   VARCHAR2(25),
    bandara_asal     VARCHAR2(25),
    bandara_tujuan   VARCHAR2(25)
);

ALTER TABLE bandara ADD CONSTRAINT bandara_pk PRIMARY KEY ( id_bandara );


CREATE TABLE asuransi (
    id_asuransi      INTEGER NOT NULL,
    harga            CHAR(10),
    jenis_asuransi   VARCHAR2(15)
);

ALTER TABLE asuransi ADD CONSTRAINT asuransi_pk PRIMARY KEY ( id_asuransi );

CREATE TABLE penumpang (
    id_penumpang       INTEGER NOT NULL,
    nama_penumpang     VARCHAR2(25),
    alamat_penumpang   VARCHAR2(25),
    jk                 CHAR(10),
    cp_penumpang       VARCHAR2(20)
);

ALTER TABLE penumpang ADD CONSTRAINT penumpang_pk PRIMARY KEY ( id_penumpang );

CREATE TABLE penumpanginter (
    id_paspor          INTEGER NOT NULL,
    nama_penumpang     VARCHAR2(25),
    alamat_penumpang   VARCHAR2(25),
    jk                 CHAR(10),
    cp_penumpang       VARCHAR2(20)
);

ALTER TABLE penumpanginter ADD CONSTRAINT penumpanginter_pk PRIMARY KEY ( id_paspor );

CREATE TABLE pesawat (
    id_pesawat     INTEGER NOT NULL,
    nama_pesawat   VARCHAR2(25),
    tipe_pesawat   VARCHAR2(25),
    call_sign      CHAR(10),
    id_maskapai    INTEGER NOT NULL,
    id_mesin       INTEGER NOT NULL
);

ALTER TABLE pesawat ADD CONSTRAINT pesawat_pk PRIMARY KEY ( id_pesawat );

ALTER TABLE pesawat
    ADD CONSTRAINT pesawat_maskapai_fk FOREIGN KEY ( id_maskapai )
        REFERENCES maskapai ( id_maskapai );


CREATE TABLE info_flight (
    id_info           INTEGER NOT NULL,
    id_pesawat        INTEGER NOT NULL,
    id_b_tujuan       INTEGER NOT NULL,
    id_b_asal         INTEGER NOT NULL,
    status            CHAR(10),
    bandara_tujuan    VARCHAR2(25),
    bandara_asal      VARCHAR2(25),
    waktu_datang      VARCHAR2(25),
    waktu_berangkat   VARCHAR2(25)
);

ALTER TABLE info_flight ADD CONSTRAINT info_flight_pk PRIMARY KEY ( id_info );

ALTER TABLE info_flight
    ADD CONSTRAINT info_flight_bandara_fk FOREIGN KEY ( id_b_tujuan )
        REFERENCES bandara ( id_bandara );

ALTER TABLE info_flight
    ADD CONSTRAINT info_flight_bandara_fkv1 FOREIGN KEY ( id_b_asal )
        REFERENCES bandara ( id_bandara );

ALTER TABLE info_flight
    ADD CONSTRAINT info_flight_pesawat_fk FOREIGN KEY ( id_pesawat )
        REFERENCES pesawat ( id_pesawat );


CREATE TABLE kursi (
    no_kursi      INTEGER NOT NULL,
    id_pesawat    INTEGER NOT NULL,
    baris_kursi   CHAR(10),
    kolom_baris   CHAR(10)
);

ALTER TABLE kursi ADD CONSTRAINT kursi_pk PRIMARY KEY ( no_kursi );

ALTER TABLE kursi
    ADD CONSTRAINT kursi_pesawat_fk FOREIGN KEY ( id_pesawat )
        REFERENCES pesawat ( id_pesawat );


CREATE TABLE bagasi (
    id_bagasi     INTEGER NOT NULL,
    id_pesawat    INTEGER NOT NULL,
    nama_bagasi   VARCHAR2(25),
    tipe_bagasi   VARCHAR2(25),
    berat         CHAR(10)
);

ALTER TABLE bagasi ADD CONSTRAINT bagasi_pk PRIMARY KEY ( id_bagasi );

ALTER TABLE bagasi
    ADD CONSTRAINT bagasi_pesawat_fk FOREIGN KEY ( id_pesawat )
        REFERENCES pesawat ( id_pesawat );


CREATE TABLE detail_flight (
    no_flight         INTEGER NOT NULL,
    id_penerbangan    INTEGER NOT NULL,
    id_info           INTEGER NOT NULL,
    id_kursi          INTEGER NOT NULL,
    id_bagasi         INTEGER NOT NULL,
    waktu_berangkat   VARCHAR2(25),
    waktu_datang      VARCHAR2(25)
);

ALTER TABLE detail_flight ADD CONSTRAINT detail_flight_pk PRIMARY KEY ( no_flight );

ALTER TABLE detail_flight
    ADD CONSTRAINT detail_flight_bagasi_fk FOREIGN KEY ( id_bagasi )
        REFERENCES bagasi ( id_bagasi );

ALTER TABLE detail_flight
    ADD CONSTRAINT detail_flight_info_flight_fk FOREIGN KEY ( id_kursi )
        REFERENCES kursi ( no_kursi );

ALTER TABLE detail_flight
    ADD CONSTRAINT detail_flight_penerbangan_fk FOREIGN KEY ( id_penerbangan )
        REFERENCES flight ( id_penerbangan );


CREATE TABLE flight (
    id_penerbangan   INTEGER NOT NULL,
    id_penumpang     INTEGER NOT NULL,
    kelas            CHAR(10),
    tgl_terbang      DATE,
    id_info          INTEGER NOT NULL,
    id_asuransi      INTEGER NOT NULL,
    id_paspor        INTEGER NOT NULL
);

ALTER TABLE flight ADD CONSTRAINT penerbangan_pk PRIMARY KEY ( id_penerbangan );

ALTER TABLE flight
    ADD CONSTRAINT flight_asuransi_fk FOREIGN KEY ( id_asuransi )
        REFERENCES asuransi ( id_asuransi );

ALTER TABLE flight
    ADD CONSTRAINT flight_info_flight_fk FOREIGN KEY ( id_info )
        REFERENCES info_flight ( id_info );

ALTER TABLE flight
    ADD CONSTRAINT flight_penumpanginter_fk FOREIGN KEY ( id_paspor )
        REFERENCES penumpanginter ( id_paspor );

ALTER TABLE flight
    ADD CONSTRAINT penerbangan_bandara_fkv1 FOREIGN KEY ( id_penumpang )
        REFERENCES penumpang ( id_penumpang );