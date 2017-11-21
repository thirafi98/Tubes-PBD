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

rename no_kursi to id_kursi;
alter table detail_flight rename column id_kursi to no_kursi;

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

select * from detail_flight;
select * from info_flight;
select * from penumpangDomestik;
select (max(no_flight)) from detail_flight group by no_flight;

select id_penumpang, nama_penumpang, tgl_terbang, waktu_berangkat, waktu_datang 
from penumpangDomestik join flight using (id_penumpang)
join detail_flight using(id_penerbangan)
;
-------------------------------------------------------------------------------

select nama_penumpang, alamat_penumpang
from penumpangDomestik
where JK='Cewek';

-------------------------------------------------------------------------------
/*tampilin kursi yang sedikit*/
select * from kursi;
select * from detail_flight;
select * from flight;
select * from pesawat;

select no_kursi from kursi join detail_flight using(no_kursi);

select count(no_kursi) from detail_flight where no_kursi not in(select no_kursi from kursi join detail_flight using(no_kursi))
group by NO_KURSI
having count(no_kursi);

select count(no_kursi) from detail_flight where no_kursi not in(select no_kursi from detail_flight)
having count(no_kursi) < (select id_penerbangan from flight join detail_flight using(id_penerbangan);


