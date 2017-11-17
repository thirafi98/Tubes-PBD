SELECT * from asuransi;
select * from bagasi;
select * from bandara;
select * from DETAIL_FLIGHT;
select * from flight;
select * from info_flight;
select * from kursi;
select * from maskapai;
select * from penumpang;
select * from penumpanginter;
select * from pesawat;
select * from pilot;
select * from menerbangkan;

--select nama_penumpang, alamat_penumpang
--from penumpang
--where JK='Cewek';

select nama_maskapi
from maskapai where alamat_maskapai like 'Suka%';

