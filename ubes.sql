SELECT * from asuransi;
select * from bagasi;
select * from bandara;
select * from DETAIL_FLIGHT;
select * from flight;
select * from info_flight;
select * from kursi;
select * from maskapai;

select * from penumpangDomestik;
select * from penumpanginter;
select * from pesawat;
select * from pilot;
select * from menerbangkan;
select * from info_flight_tujuan;
select * from info_flight_asal;
rename info_flight to info_flight_tujuan;
rename id_info to id_info_asal;
select * from flight;
alter table flight rename column id_info_asal to id_info_tujuan;
alter table detail_flight rename column id_kursi to no_kursi;
alter table info_flight_asal drop column id_b_tujuan;

select * from info_flight_asal;
select * from flight;
select * from info_flight_tujuan;
update INFO_FLIGHT_TUJUAN set ID_PENERBANGAN=901 where id_info=601;

update INFO_FLIGHT_TUJUAN set ID_PENERBANGAN=902 where id_info=602;
update INFO_FLIGHT_TUJUAN set ID_PENERBANGAN=903 where id_info=603;
update INFO_FLIGHT_TUJUAN set ID_PENERBANGAN=903 where id_info=604;
update INFO_FLIGHT_TUJUAN set ID_PENERBANGAN=904 where id_info=605;
update INFO_FLIGHT_TUJUAN set ID_PENERBANGAN=902 where id_info=606;

update flight set id_info_asal=6602 where id_penerbangan=901;
update flight set id_info_asal=6603 where id_penerbangan=902;
update flight set id_info_asal=6601 where id_penerbangan=903;
update flight set id_info_asal=6604 where id_penerbangan=904;
select * from flight;

alter table flight add id_info_asal int;
select * from flight;


select * from info_flight_asal;

/*Trs aku mau query nya klo jd diganti, nyari jam terbang terlama 
ditampilin nama pilot pesawat apa sama jadwal terbaangnya*/
select id_pilot,nama_pilot, nama_pesawat, max(to_number(jam_terbang)) jam_terbang 
from pilot join menerbangkan using(id_pilot)
join pesawat using (id_pesawat) 
group by id_pilot, nama_pilot, nama_pesawat
having max(to_number(jam_terbang)) = (select max(to_number(jam_terbang)) from menerbangkan);
--------------------------------------------------------------------------------------------------

select id_pilot, max(to_number(jam_terbang)) jam_terbang from menerbangkan group by id_pilot;


/*Trs nyari penumpang yg melakukan lebih dari 1 kali penerbangan atau yg melakukan checkin*/
alter table detail_flight drop column id_info;
select * from penumpangDomestik;

select * from detail_flight;
select * from info_flight;
select * from penumpangDomestik;
select (max(no_flight)) from detail_flight group by no_flight;

select id_penumpang, nama_penumpang, tgl_terbang, waktu_berangkat, waktu_datang 
from penumpangDomestik join flight using (id_penumpang)
join detail_flight using(id_penerbangan);
-------------------------------------------------------------------------------
select waktu_datang,nama_bandara from bandara join info_flight_asal
on bandara.ID_BANDARA = info_flight_asal.ID_B_ASAL
group by waktu_datang,nama_bandara
having waktu_datang = (select max(waktu_datang) from info_flight_asal);

select * from info_flight_asal;


select nama_penumpang, alamat_penumpang
from penumpangDomestik
where JK='Cewek';

-------------------------------------------------------------------------------
/*tampilin kursi yang sedikit*/
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

select nama_bandara,count(*) as jumlah_menerbangkan from
bandara join INFO_FLIGHT_ASAL 
on bandara.id_bandara = info_flight_asal.id_b_asal
group by nama_bandara
having count(*) = (select max(count(*)) from INFO_FLIGHT_ASAL group by id_b_asal);



select max(count(*)) from INFO_FLIGHT_ASAL group by id_b_asal;
--------------------------------------------------------------------------------
select * from bagasi;
select * from kursi;
select * from detail_flight;
select nama_bandara from bandara;
select * from info_flight_tujuan;
select * from flight;

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
select nama_pesawat, nama_bandara, waktu_berangkat, waktu_datang from
pesawat join INFO_FLIGHT_asal on pesawat.ID_pesawat = INFO_FLIGHT_asal.ID_PESAWAT 
join bandara on bandara.ID_BANDARA = INFO_FLIGHT_asal.ID_B_asal;


select nama_pesawat, nama_bandara, id_penerbangan from
pesawat join INFO_FLIGHT_TUJUAN on pesawat.ID_PESAWAT = INFO_FLIGHT_TUJUAN.ID_PESAWAT 
join bandara on bandara.ID_BANDARA = INFO_FLIGHT_TUJUAN.ID_B_TUJUAN;
--------------------------------------------------------------------------------
select * from pesawat;
select * from flight;
select * from INFO_FLIGHT_Tujuan;
select * from info_flight_asal;

select nama_bandara from 
bandara join INFO_FLIGHT_TUJUAN on BANDARA.ID_BANDARA = INFO_FLIGHT_TUJUAN.ID_B_TUJUAN;

select tgl_terbang, status from
flight join INFO_FLIGHT_TUJUAN on flight.ID_PENERBANGAN = INFO_FLIGHT_TUJUAN.ID_PENERBANGAN;

select nama_penumpang, tgl_terbang, status, nama_bandara from PENUMPANGDOMESTIK join flight
on penumpangDomestik.id_penumpang = flight.ID_PENUMPANG
join INFO_FLIGHT_TUJUAN on flight.ID_PENERBANGAN = INFO_FLIGHT_TUJUAN.ID_PENERBANGAN
join bandara on BANDARA.ID_BANDARA = INFO_FLIGHT_TUJUAN.ID_B_TUJUAN;


select nama_penumpang, tgl_terbang, status, nama_bandara from PENUMPANGDOMESTIK join flight
on penumpangDomestik.id_penumpang = flight.ID_PENUMPANG
join INFO_FLIGHT_asal on flight.ID_PENERBANGAN = INFO_FLIGHT_asal.ID_PENERBANGAN
join bandara on BANDARA.ID_BANDARA = INFO_FLIGHT_asal.ID_B_asal;