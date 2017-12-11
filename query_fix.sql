alter table asuransi rename column jenis_asuransi to nama_asuransi;
select * from asuransi;

/*Trs aku mau query nya klo jd diganti, nyari jam terbang terlama 
ditampilin nama pilot pesawat apa sama jadwal terbaangnya*/
select id_pilot,nama_pilot, nama_pesawat, max(to_number(jam_terbang)) jam_terbang 
from pilot join menerbangkan using(id_pilot)
join pesawat using (id_pesawat) 
group by id_pilot, nama_pilot, nama_pesawat
having max(to_number(jam_terbang)) = (select max(to_number(jam_terbang)) from menerbangkan);
--------------------------------------------------------------------------------------------------

--select id_pilot, max(to_number(jam_terbang)) jam_terbang from menerbangkan group by id_pilot;


/*Trs nyari penumpang yg melakukan lebih dari 1 kali penerbangan atau yg melakukan checkin*/

select (max(no_flight)) from detail_flight group by no_flight;

select id_penumpang, nama_penumpang, tgl_terbang, waktu_berangkat, waktu_datang 
from penumpangDomestik join flight using (id_penumpang)
join detail_flight using(id_penerbangan);
-------------------------------------------------------------------------------

select * from asuransi;
/*
select jenis_asuransi from asuransi
where harga > 700000;
*/
-------------------------------------------------------------------------------
/*tampilin kursi yang tidak dipakai*/
select * from kursi;
select * from detail_flight;
select * from flight;
select * from pesawat;

select nama_pesawat, no_kursi from kursi natural join pesawat 
where no_kursi not in (select no_kursi from detail_flight);
--------------------------------------------------------------------------------
--Bandara yang sering dikunjungi
--nambah 1 lg table info_asal
--buat yg lg skema relasinya
--buat yg nomor 4 tinggal ngambil dari info_tujuan

select * from info_flight_asal;
select * from bandara;

select id_info_asal, id_bandara, nama_bandara, status, waktu_datang from
bandara join INFO_FLIGHT_ASAL 
on bandara.id_bandara = info_flight_asal.id_b_asal
;
--------------------------------------------------------------------------------
select nama_bandara,count(*) as jumlah_menerbangkan from
bandara join INFO_FLIGHT_ASAL 
on bandara.id_bandara = info_flight_asal.id_b_asal
group by nama_bandara
having count(*) = (select max(count(*)) from INFO_FLIGHT_ASAL group by id_b_asal);

--------------------------------------------------------------------------------
select * from bagasi;
select * from kursi;
select * from detail_flight;
select nama_bandara from bandara;
select * from info_flight_tujuan;
select * from flight;

--penumpang yang sering terbang ke bandara tujuan
select nama_penumpang,count(*) as jml_kunjungan,  nama_bandara from 
penumpangDomestik join flight on penumpangDomestik.id_penumpang = flight.ID_PENUMPANG
join info_flight_tujuan on flight.ID_INFO_TUJUAN = info_flight_tujuan.ID_INFO 
join bandara on info_flight_tujuan.ID_B_TUJUAN = bandara.ID_BANDARA 
group by penumpangDomestik.ID_PENUMPANG, nama_penumpang, nama_bandara
having count(*) =  (select max(count(*)) from flight GROUP BY id_penumpang);

--------------------------------------------------------------------------------
select * from INFO_FLIGHT_TUJUAN;
/*select nama_pesawat, count(*), nama_bandara from
pesawat join INFO_FLIGHT_TUJUAN on pesawat.ID_PESAWAT = INFO_FLIGHT_TUJUAN.ID_PESAWAT 
join bandara on bandara.ID_BANDARA = INFO_FLIGHT_TUJUAN.ID_B_TUJUAN
group by nama_pesawat, nama_bandara
having count(*) = (select max(count(*)) from info_flight_tujuan group by id_pesawat);*/

--munculkan pesawat tujuan kemana dengan waktu keberangkatan dan kedatangan
select nama_pesawat, nama_maskapai, nama_bandara, waktu_berangkat, waktu_datang from
pesawat join INFO_FLIGHT_asal on pesawat.ID_pesawat = INFO_FLIGHT_asal.ID_PESAWAT 
join maskapai on maskapai.ID_MASKAPAI = pesawat.ID_MASKAPAI
join bandara on bandara.ID_BANDARA = INFO_FLIGHT_asal.ID_B_asal;


--------------------------------------------------------------------------------
--menampilkan penumpang dengan tujuan kemana, tgl brp dia pergi dan asal bandara
select nama_penumpang, tgl_terbang, status, nama_bandara from PENUMPANGDOMESTIK join flight
on penumpangDomestik.id_penumpang = flight.ID_PENUMPANG
join INFO_FLIGHT_asal on flight.ID_PENERBANGAN = INFO_FLIGHT_asal.ID_PENERBANGAN
join bandara on BANDARA.ID_BANDARA = INFO_FLIGHT_asal.ID_B_asal;

--------------------------------------------------------------------------------
--menampilkan pilot menggunakan pesawat apa, nama maskapai pesawatnya apa

select nama_pilot,  jam_terbang,tgl_terbang, nama_pesawat, nama_maskapai from
pilot join menerbangkan using(id_pilot)
join pesawat using (id_pesawat)
join maskapai using(id_maskapai);

select * from tabs;
select * from penumpangInter;
update penumpangInter set jk='P' where id_paspor=4401;
update penumpangInter set jk='P' where id_paspor=4402;
update penumpangInter set jk='P' where id_paspor=4403;
update penumpangDomestik set jk='P' where id_penumpang=401;
update penumpangDomestik set jk='L' where id_penumpang=402;
update penumpangDomestik set jk='P' where id_penumpang=403;
update penumpangDomestik set jk='L' where id_penumpang=404;

select * from flight;
select * from info_flight_asal;
select * from penumpangDomestik;
select * from bandara;

select nama_penumpang,  tgl_terbang, nama_pesawat, nama_bandara from
penumpangDomestik join flight using (id_penumpang)
join INFO_FLIGHT_ASAL using(id_penerbangan)
join pesawat using(id_pesawat)
join bandara on bandara.id_bandara = INFO_FLIGHT_ASAL.ID_B_ASAL
where tgl_terbang > (select ceil((sysdate-tgl_terbang)/365) as tgl_terbang from flight);

select * from pilot;
select max(umur) from pilot;
select id_pilot, nama_pilot, max(umur) from pilot
group by id_pilot, nama_pilot, umur
having max(umur) = (select max(umur) from pilot);












