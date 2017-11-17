
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

INSERT INTO bandara VALUES(201,'Nan','munjul');
INSERT INTO bandara VALUES(202,'Jauh','warkop');
INSERT INTO bandara VALUES(203,'Dimato','podomor');

INSERT INTO asuransi VALUES(301,'500000','Regular');
INSERT INTO asuransi VALUES(302,'700000','Special');
INSERT INTO asuransi VALUES(303,'900000','Uwow');

INSERT INTO penumpang VALUES(401,'Ichika rolin','Sukabirus','Cewek','087887788');
INSERT INTO penumpang VALUES(402,'Maemunah','Sukaoura','Cowok','087887788');
INSERT INTO penumpang VALUES(403,'dia','Mengger','Cewek','087887788');

INSERT INTO penumpanginter VALUES(4401,'Ichika Christin','Sukabirus','Cewek','087887788');
INSERT INTO penumpanginter VALUES(4402,'Bond Munah','Sukabirus','Cewek','087887788');
INSERT INTO penumpanginter VALUES(4403,'James budi','Sukabirus','Cewek','087887788');

INSERT INTO pesawat VALUES(501,101,'Whoosh Airline','Boeing','WA');
INSERT INTO pesawat VALUES(502,101,'Ngeeeng Airline','Boeing','NA');
INSERT INTO pesawat VALUES(503,103,'Criittt Airline','Boeing','CA');

INSERT INTO info_flight VALUES(601,502,201,202,'One Way','Nan','Jauh','19:00','20:00');
INSERT INTO info_flight VALUES(602,502,203,202,'Transit','Dimato','Jauh','20:00','23:00');
INSERT INTO info_flight VALUES(603,501,203,201,'One Way','Dimato','Nan','09:00','10:00');

INSERT INTO kursi VALUES(701, 501, 'A','12');
INSERT INTO kursi VALUES(702, 503, 'B','09');
INSERT INTO kursi VALUES(703, 502, 'C','23');

INSERT INTO bagasi VALUES(801,502,'Quoes','Regular','15');
INSERT INTO bagasi VALUES(802,501,'Brios','Uwow','4');
INSERT INTO bagasi VALUES(803,503,'Quoes','Special','12');

INSERT INTO flight VALUES(901,402,4401,'Ekonomni','20-Nov-17',602,301);
INSERT INTO flight VALUES(902,401,4403,'Ekonomni','20-Nov-17',603,302);
INSERT INTO flight VALUES(903,403,4402,'Bisnis','20-Nov-17',601,303);

INSERT INTO detail_flight VALUES(1101,901,601,701,801,'19:00','20:00');
INSERT INTO detail_flight VALUES(1102,903,603,703,803,'09:00','10:00');
INSERT INTO detail_flight VALUES(1103,902,602,702,802,'20:00','23:00');

INSERT INTO pilot VALUES(1201, 'Agus', '34', '234');
INSERT INTO pilot VALUES(1203, 'Andi', '43', '142');
INSERT INTO pilot VALUES(1204, 'Chandra', '65', '90');
INSERT INTO pilot VALUES(1205, 'Bambang', '30', '24');

INSERT INTO menerbangkan VALUES(1301, 501, 1201, '20-Nov-17', '234');
INSERT INTO menerbangkan VALUES(1302, 503, 1203, '20-Nov-17', '142');
INSERT INTO menerbangkan VALUES(1303, 502, 1204, '20-Nov-17', '90');
=======
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

INSERT INTO penumpanginter VALUES(4401,"Ichika Christin","Sukabirus","Cewek","087887788");
INSERT INTO penumpanginter VALUES(4402,"Bond Munah","Sukabirus","Cewek","087887788");
INSERT INTO penumpanginter VALUES(4403,"James budi","Sukabirus","Cewek","087887788");

INSERT INTO pesawat VALUES(501,101,'Whoosh Airline','Boeing','WA');
INSERT INTO pesawat VALUES(502,101,'Ngeeeng Airline','Boeing','NA');
INSERT INTO pesawat VALUES(503,103,'Criittt Airline','Boeing','CA');

INSERT INTO info_flight VALUES(601,502,201,202,'One Way','Nan','Jauh','19:00','20:00');
INSERT INTO info_flight VALUES(602,502,203,202,'Transit','Dimato','Jauh','20:00','23:00');
INSERT INTO info_flight VALUES(603,501,203,201,'One Way','Dimato','Nan','09:00','10:00');

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
>>>>>>> b2053cea89e84ef26e8a35cb6a97ae765d9603a4
