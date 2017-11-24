
alter session set nls_date_format= 'dd-month-yyyy';

INSERT INTO maskapai VALUES(101,'Cap Tua','Sukapura');
INSERT INTO maskapai VALUES(102,'Elang','mengger');
INSERT INTO maskapai VALUES(103,'Naga','Sukabirus');

INSERT INTO maskapai VALUES(104,'Suzi','PGA');
INSERT INTO maskapai VALUES(105,'Gama','Bojongsoang');
INSERT INTO maskapai VALUES(106,'Dori','Dayeuhkolot');
INSERT INTO maskapai VALUES(107,'Rajawali','Balendah');
INSERT INTO maskapai VALUES(108,'Garuda','Majalaya');
INSERT INTO maskapai VALUES(109,'Merpati','Bubat');
INSERT INTO maskapai VALUES(110,'Jalak','Braga');
INSERT INTO maskapai VALUES(111,'Gagak','Depatiukur');
INSERT INTO maskapai VALUES(112,'Hiu','Ciamis');
INSERT INTO maskapai VALUES(113,'Pari','Garut');
INSERT INTO maskapai VALUES(114,'Paus','Ciganitri');
INSERT INTO maskapai VALUES(115,'Koi','Antapani');
INSERT INTO maskapai VALUES(116,'Deer','Lembang');
INSERT INTO maskapai VALUES(117,'Lion','Banjaran');
INSERT INTO maskapai VALUES(118,'Cat','Sukajadi');
INSERT INTO maskapai VALUES(119,'Dog','Sukamiskin');
INSERT INTO maskapai VALUES(120,'Rat','Sukakaya');
INSERT INTO maskapai VALUES(121,'Worm','Sukain');
INSERT INTO maskapai VALUES(122,'Cool','Lengkong');
select *from bandara;
INSERT INTO bandara VALUES(201,'Nan','munjul');
INSERT INTO bandara VALUES(202,'Jauh','warkop');
INSERT INTO bandara VALUES(203,'Dimato','podomor');
INSERT INTO bandara VALUES(204,'San','Sagidang');
INSERT INTO bandara VALUES(205,'Sabang','Tartar');
INSERT INTO bandara VALUES(206,'Merauke','Turtur');
INSERT INTO bandara VALUES(207,'Mariah','Inisa');
INSERT INTO bandara VALUES(208,'Panduga','Mana');
INSERT INTO bandara VALUES(209,'Tirta','Dimana');
INSERT INTO bandara VALUES(210,'Negara','Anak');
INSERT INTO bandara VALUES(211,'La','Kambing');
INSERT INTO bandara VALUES(212,'Yuan','Saya');
INSERT INTO bandara VALUES(213,'Xiao','anak');
INSERT INTO bandara VALUES(214,'Mi','kmabing');
INSERT INTO bandara VALUES(215,'Sau','saya');
INSERT INTO bandara VALUES(216,'Janm','adas');
INSERT INTO bandara VALUES(217,'Gum','dias');
INSERT INTO bandara VALUES(218,'Titan','kambung');
INSERT INTO bandara VALUES(219,'Koro','baru');
INSERT INTO bandara VALUES(220,'Pilus','cacaf');

INSERT INTO asuransi VALUES(301,'500000','MOM');
INSERT INTO asuransi VALUES(302,'700000','TAT');
INSERT INTO asuransi VALUES(303,'900000','YAY');
INSERT INTO asuransi VALUES(304,'500000','SOS');
INSERT INTO asuransi VALUES(305,'700000','GOM');
INSERT INTO asuransi VALUES(306,'900000','TYD');
INSERT INTO asuransi VALUES(307,'500000','BGKJ');
INSERT INTO asuransi VALUES(308,'700000','MWK');
INSERT INTO asuransi VALUES(309,'900000','KPL');
INSERT INTO asuransi VALUES(310,'500000','XIXIO');
INSERT INTO asuransi VALUES(311,'700000','WRT');
INSERT INTO asuransi VALUES(312,'900000','SAF');
INSERT INTO asuransi VALUES(313,'500000','PRUDENTIAL');
INSERT INTO asuransi VALUES(314,'700000','ADARA');
INSERT INTO asuransi VALUES(315,'900000','AKE');
INSERT INTO asuransi VALUES(316,'500000','LUGENT');
INSERT INTO asuransi VALUES(317,'700000','LIFE');
INSERT INTO asuransi VALUES(318,'900000','FOR');
INSERT INTO asuransi VALUES(319,'500000','YOU');
INSERT INTO asuransi VALUES(320,'700000','CYE');
INSERT INTO penumpangDomestik VALUES(401,'Ichika rolin','Sukabirus','Cewek','087887788');
INSERT INTO penumpangDomestik VALUES(402,'Maemunah','Sukaoura','Cowok','087887788');
INSERT INTO penumpangDomestik VALUES(403,'dia','Mengger','Cewek','087887788');

INSERT INTO penumpanginter VALUES(4401,'Ichika Christin','Sukabirus','Cewek','087887788');
INSERT INTO penumpanginter VALUES(4402,'Bond Munah','Sukabirus','Cewek','087887788');
INSERT INTO penumpanginter VALUES(4403,'James budi','Sukabirus','Cewek','087887788');

INSERT INTO pesawat VALUES(501,101,'Whoosh Airline','Boeing','WA');
INSERT INTO pesawat VALUES(502,101,'Ngeeeng Airline','Boeing','NA');
INSERT INTO pesawat VALUES(503,103,'Criittt Airline','Boeing','CA');
INSERT INTO pesawat VALUES(504,101,'Yeipy Airline','Boeing','YA');
INSERT INTO pesawat VALUES(505,102,'Woaaah Airline','Boeing','HA');
INSERT INTO pesawat VALUES(506,102,'Brummm Airline','Boeing','BA');
INSERT INTO pesawat VALUES(507,101,'Ngiiiinggg Airline','Boeing','GA');
INSERT INTO pesawat VALUES(508,101,'Nguuuung Airline','Boeing','UA');
INSERT INTO pesawat VALUES(509,110,'Plashhh Airline','Boeing','PA');
INSERT INTO pesawat VALUES(510,110,'Booooom Airline','Boeing','BA');
INSERT INTO pesawat VALUES(511,119,'Syaaahhh Airline','Boeing','SA');
INSERT INTO pesawat VALUES(512,113,'Wushhhh Airline','Boeing','AA');
INSERT INTO pesawat VALUES(503,101,'Bye Airline','Boeing','BYA');
INSERT INTO pesawat VALUES(503,109,'Dada Airline','Boeing','DA');
INSERT INTO pesawat VALUES(504,109,'Whoam Airline','Boeing','WHA');
INSERT INTO pesawat VALUES(505,103,'Yieie Airline','Boeing','YIA');
INSERT INTO pesawat VALUES(509,103,'Yuias Airline','Boeing','YUA');
INSERT INTO pesawat VALUES(510,104,'Oaap Airline','Boeing','OA');
INSERT INTO pesawat VALUES(514,106,'Shhhh Airline','Boeing','SHA');
INSERT INTO pesawat VALUES(515,106,'Ummmm Airline','Boeing','UA');
INSERT INTO pesawat VALUES(515,116,'Mais Airline','Boeing','MAA');
INSERT INTO pesawat VALUES(518,119,'Gege Airline','Boeing','GEA');
INSERT INTO pesawat VALUES(519,119,'Taret Airline','Boeing','TRA');
INSERT INTO pesawat VALUES(520,111,'Yaosan Airline','Boeing','YOA');
--INSERT INTO info_flight VALUES(603,501,203,201,'One Way','Dimato','Nan','09:00','10:00');
select * from info_flight_asal;
insert into info_flight_asal values(6601, 501, 212, 'One Way','01:00','02:00',901);
insert into info_flight_asal values(6602, 503, 211, 'One Way','05:00','19:00',901);
insert into info_flight_asal values(6603, 502, 219, 'Transit','10:00','13:00',902);
SELECT * FROM PESAWAT;
insert into info_flight_asal values(6601, 501, 212, 'One Way','01:00','02:00',901);
insert into info_flight_asal values(6602, 503, 211, 'One Way','05:00','19:00',902);
insert into info_flight_asal values(6603, 502, 219, 'Transit','10:00','13:00',903);
insert into info_flight_asal values(6604, 509, 208, 'One Way','05:00','19:00',903);
insert into info_flight_asal values(6605, 509, 204, 'Transit','10:00','13:00',902);
insert into info_flight_asal values(6606, 510, 206, 'One Way','05:00','19:00',903);
insert into info_flight_asal values(6607, 519, 209, 'Transit','10:00','13:00',901);

insert into info_flight_asal values(6608, 509, 204, 'Transit','14:00','19:00');

select * from info_flight_asal ;
select * from info_flight_tujuan ;

INSERT INTO info_flight VALUES(601,502,201,202,'One Way','Nan','Jauh','19:00','20:00');
INSERT INTO info_flight VALUES(602,502,203,202,'Transit','Dimato','Jauh','20:00','23:00');
INSERT INTO info_flight VALUES(603,501,203,201,'One Way','Dimato','Nan','09:00','10:00');

INSERT INTO kursi VALUES(701, 501, 'A','12');
INSERT INTO kursi VALUES(702, 503, 'B','09');
INSERT INTO kursi VALUES(703, 502, 'C','23');
INSERT INTO kursi VALUES(704, 501, 'C','43');
INSERT INTO kursi VALUES(705, 503, 'E','43');
INSERT INTO kursi VALUES(706, 502, 'F','43');
INSERT INTO kursi VALUES(707, 501, 'A','43');
INSERT INTO kursi VALUES(708, 503, 'E','43');
INSERT INTO kursi VALUES(709, 502, 'B','43');
INSERT INTO kursi VALUES(710, 501, 'B','43');
INSERT INTO kursi VALUES(711, 503, 'F','43');
INSERT INTO kursi VALUES(712, 502, 'C','43');
INSERT INTO kursi VALUES(713, 501, 'C','43');

INSERT INTO bagasi VALUES(801,502,'Quoes','Regular','15');
INSERT INTO bagasi VALUES(802,501,'Brios','Uwow','4');
INSERT INTO bagasi VALUES(803,503,'Quoes','Special','12');

INSERT INTO flight VALUES(901,402,4401,'Ekonomni','20-Nov-17',602,301);
INSERT INTO flight VALUES(902,401,4403,'Ekonomni','20-Nov-17',603,302);
INSERT INTO flight VALUES(903,403,4402,'Bisnis','20-Nov-17',601,303);
INSERT INTO flight VALUES(904,401,4403,'Bisnis','10-Nov-17',603,302);

INSERT INTO detail_flight VALUES(1101,901,601,701,801,'19:00','20:00');
INSERT INTO detail_flight VALUES(1102,903,603,703,803,'09:00','10:00');
INSERT INTO detail_flight VALUES(1103,902,602,702,802,'20:00','23:00');

--ini yang bener
INSERT INTO detail_flight VALUES(1104,904,702,802,'19:00','23:00');

INSERT INTO pilot VALUES(1201, 'Agus', '34', '234');
INSERT INTO pilot VALUES(1203, 'Andi', '43', '142');
INSERT INTO pilot VALUES(1204, 'Chandra', '65', '90');
INSERT INTO pilot VALUES(1205, 'Bambang', '30', '24');

--ini ysng bener juga
INSERT INTO pilot VALUES(1206, 'Wian', '31');
INSERT INTO pilot VALUES(1207, 'Tiar', '30');
INSERT INTO pilot VALUES(1208, 'Iva', '28');
INSERT INTO pilot VALUES(1209, 'Majoli', '42');
INSERT INTO pilot VALUES(1210, 'Geri', '47');
INSERT INTO pilot VALUES(1211, 'Tatan', '40');
INSERT INTO pilot VALUES(1212, 'Suhendar', '37');
INSERT INTO pilot VALUES(1213, 'Bambang', '35');
INSERT INTO pilot VALUES(1214, 'Irwan', '39');
INSERT INTO pilot VALUES(1215, 'Radi', '36');
INSERT INTO pilot VALUES(1216, 'Hendar', '35');
INSERT INTO pilot VALUES(1217, 'Asa', '50');
INSERT INTO pilot VALUES(1218, 'Oppa', '44');
INSERT INTO pilot VALUES(1219, 'Park', '42');
INSERT INTO pilot VALUES(1220, 'Xiang', '48');
INSERT INTO pilot VALUES(1221, 'Danang', '35');
INSERT INTO pilot VALUES(1222, 'Gandung', '39');
INSERT INTO pilot VALUES(1223, 'Triadi', '37');
INSERT INTO pilot VALUES(1224, 'Adi', '44');
INSERT INTO pilot VALUES(1225, 'Fari', '46');

INSERT INTO menerbangkan VALUES(1301, 501, 1201, '20-Nov-17', '234');
INSERT INTO menerbangkan VALUES(1302, 503, 1203, '20-Nov-17', '142');
INSERT INTO menerbangkan VALUES(1303, 502, 1204, '20-Nov-17', '90');

alter session set nls_date_format= 'dd-month-yyyy';

INSERT INTO maskapai VALUES(101,'Cap Tua','Sukapura');
INSERT INTO maskapai VALUES(102,'Elang','mengger');
INSERT INTO maskapai VALUES(103,'Naga','Sukabirus');

INSERT INTO bandara VALUES(201,'Nan','munjul');
INSERT INTO bandara VALUES(202,'Jauh','warkop');
INSERT INTO bandara VALUES(203,'Dimato','podomor');

INSERT INTO asuranasi VALUES(301,'500000','Regular');
INSERT INTO asuranasi VALUES(302,'700000','Special');
INSERT INTO asuranasi VALUES(303,'900000','Uwow');

INSERT INTO penumpang VALUES(401,"Ichika rolin","Sukabirus","Cewek","087887788");
INSERT INTO penumpang VALUES(402,"Maemunah","Sukaoura","Cowok","087887788");
INSERT INTO penumpang VALUES(403,"dia","Mengger","Cewek","087887788");
--yg bener
INSERT INTO penumpangDomestik VALUES(404,'John','Mengger1','L','087887788');
INSERT INTO penumpangDomestik VALUES(405,'Kenedy','Mengger2','L','085887788');
INSERT INTO penumpangDomestik VALUES(406,'Natasya','Kelapa Dua','P','087767788');
INSERT INTO penumpangDomestik VALUES(407,'Wilonia','Mangga','P','087883288');
INSERT INTO penumpangDomestik VALUES(408,'Tania','Apel','P','087872788');
INSERT INTO penumpangDomestik VALUES(409,'Sinski','Jeruk','P','087127788');
INSERT INTO penumpangDomestik VALUES(410,'Yuan','Sentosa','L','087887348');
INSERT INTO penumpangDomestik VALUES(411,'Guan','Anggrek','L','081087788');
INSERT INTO penumpangDomestik VALUES(412,'Kong','Kelapa Satu','L','087887712');
INSERT INTO penumpangDomestik VALUES(413,'Budiman','Pendekar Dadu','L','087217788');
INSERT INTO penumpangDomestik VALUES(414,'Shin','Dandelion','P','087889988');
INSERT INTO penumpangDomestik VALUES(415,'Maman','Sukasuka','L','087880188');
INSERT INTO penumpangDomestik VALUES(416,'Suteja','Kemang','L','087887158');
INSERT INTO penumpangDomestik VALUES(417,'Mahendar','Tandur','L','087834788');
INSERT INTO penumpangDomestik VALUES(418,'Tuntun','Permata','P','081987788');
INSERT INTO penumpangDomestik VALUES(419,'Kalela','PBB','P','087768788');
INSERT INTO penumpangDomestik VALUES(420,'Aing','GBA','L','0872936788');
INSERT INTO penumpangDomestik VALUES(421,'Reda','Pesbal','L','0871276788');
INSERT INTO penumpangDomestik VALUES(422,'Sauda','Anai-anai','P','087192088');
INSERT INTO penumpangDomestik VALUES(423,'Oman','Lobak','L','082027788');
select * from penumpangDomestik;


select * from penumpangInter;

INSERT INTO penumpanginter VALUES(4401,"Ichika Christin","Sukabirus","P","087192288");
INSERT INTO penumpanginter VALUES(4402,"Bond Munah","Korem","L","0878871923");
INSERT INTO penumpanginter VALUES(4403,"James budi","Banan","L","081927356");
INSERT INTO penumpanginter VALUES(4404,'Ichika Rolin','Squarew','P','087245788');
INSERT INTO penumpanginter VALUES(4405,'Ichika Ricin','Giantysua','P','081347788');
INSERT INTO penumpanginter VALUES(4406,'Liang','Miaong Dong','P','087234567');
INSERT INTO penumpanginter VALUES(4407,'Xuan Wan','Seoul','L','087887128');
INSERT INTO penumpanginter VALUES(4408,'Boby','Fand','L','0813874788');
INSERT INTO penumpanginter VALUES(4409,'Sugar Rush','Loamn','P','0819277788');
INSERT INTO penumpanginter VALUES(4410,'May Bian','Xixnxing','L','087334788');
INSERT INTO penumpanginter VALUES(4411,'Gund Amy','Boaskbaj','L','087886438');
INSERT INTO penumpanginter VALUES(4412,'Mar Conah','Kepiting','P','0871256238');
INSERT INTO penumpanginter VALUES(4413,'Tian Wuan','Leadoas','L','087842358');
INSERT INTO penumpanginter VALUES(4414,'San Frasch','Hags','L','08715578');
INSERT INTO penumpanginter VALUES(4415,'Bejo','Genguas','L','087881456');
INSERT INTO penumpanginter VALUES(4416,'Damang','PBB','L','087876418');
INSERT INTO penumpanginter VALUES(4417,'Tau Dahy','Sukajadi','P','0815845788');
INSERT INTO penumpanginter VALUES(4418,'Teu Sae','Sukamenang','P','0813364588');
INSERT INTO penumpanginter VALUES(4419,'Sabeee','Sukikasn','L','085644338');
INSERT INTO penumpanginter VALUES(4420,'Kenedy Kualam','PGA','L','081343488');
INSERT INTO penumpanginter VALUES(4421,'Abdul Syifa','GBA','L','0810984432');
INSERT INTO penumpanginter VALUES(4422,'Markonah Jeyca','Pesbal','P','0813927788');
INSERT INTO penumpanginter VALUES(4423,'Tan-tan','Loasn','P','081394428');
INSERT INTO penumpanginter VALUES(4424,'Vien Gop','Kamboja','P','083425788');
INSERT INTO penumpanginter VALUES(4425,'Keysj Ghsa','Japan','P','089874788');

INSERT INTO pesawat VALUES(501,101,'Whoosh Airline','Boeing','WA');
INSERT INTO pesawat VALUES(502,101,'Ngeeeng Airline','Boeing','NA');
INSERT INTO pesawat VALUES(503,103,'Criittt Airline','Boeing','CA');

INSERT INTO info_flight VALUES(601,502,201,202,'One Way','Nan','Jauh','19:00','20:00');
INSERT INTO info_flight VALUES(602,502,203,202,'Transit','Dimato','Jauh','20:00','23:00');
INSERT INTO info_flight VALUES(603,501,203,201,'One Way','Dimato','Nan','09:00','10:00');
INSERT INTO info_flight VALUES(604,501,202,201,'One Way','Jauh','Nan','09:00','10:00');
INSERT INTO info_flight VALUES(605,503,201,203,'Transit','Nan','Dimato','20:00','02:00');
INSERT INTO info_flight VALUES(606,502,203,202,'One Way','Dimato','Jauh','20:00','23:00');


select * from info_flight;
select * from bandara;


INSERT INTO kursi VALUES(701, 501, 'A','12');
INSERT INTO kursi VALUES(702, 503, 'B','09');
INSERT INTO kursi VALUES(703, 502, 'C','23');

INSERT INTO bagasi VALUES(801,502,'Quoes','Regular','15');
INSERT INTO bagasi VALUES(802,501,'Brios','Uwow','4');
INSERT INTO bagasi VALUES(803,503,'Quoes','Special','12');

INSERT INTO flight VALUES(901,402,4401,'Ekonomni','20-Nov-17',602,301);
INSERT INTO flight VALUES(902,401,4403,'Ekonomni','20-Nov-17',603,302);
INSERT INTO flight VALUES(901,403,4402,'Bisnis','20-Nov-17',601,303);

INSERT INTO detail_flight VALUES(1101,901,601,701,801,'19:00','20:00');
INSERT INTO detail_flight VALUES(1102,903,603,703,803,'09:00','10:00');
INSERT INTO detail_flight VALUES(1103,902,602,702,802,'20:00','23:00');
