\o /dev/null
\timing ON

create temporary table usertable1 as (select * from usertable);
create index key_index ON usertable1 (ycsb_key);

update usertable1 set field1=7339,field2=1566,field3=1183,field4=2694,field5=7302,field6=1632,field7=1843,field8=1653,field9=564,field10=458 where ycsb_key <= 500000;
update usertable1 set field1=477,field2=2163,field3=5430,field4=8,field5=3541,field6=8036,field7=1869,field8=5880,field9=506,field10=9200 where ycsb_key >= 4500000;
update usertable1 set field1=425,field2=2539,field3=6098,field4=9728,field5=261,field6=4455,field7=7494,field8=4924,field9=9668,field10=8371 where ycsb_key >= 4500000;
update usertable1 set field1=7134,field2=4776,field3=8049,field4=2681,field5=5761,field6=1320,field7=3121,field8=2233,field9=8338,field10=4349 where ycsb_key >= 4500000;
update usertable1 set field1=874,field2=698,field3=7548,field4=3282,field5=8698,field6=8162,field7=5736,field8=2994,field9=4007,field10=8514 where ycsb_key >= 4500000;
update usertable1 set field1=6365,field2=7926,field3=1662,field4=9843,field5=302,field6=1902,field7=3576,field8=1135,field9=615,field10=745 where ycsb_key >= 4500000;
update usertable1 set field1=2954,field2=265,field3=1912,field4=973,field5=3836,field6=1548,field7=6753,field8=683,field9=3814,field10=5889 where ycsb_key >= 4500000;
update usertable1 set field1=2144,field2=8034,field3=4115,field4=2996,field5=3731,field6=8689,field7=6589,field8=3016,field9=3938,field10=6003 where ycsb_key >= 4500000;
update usertable1 set field1=1580,field2=4491,field3=3002,field4=6827,field5=4115,field6=6563,field7=8630,field8=1336,field9=8449,field10=6020 where ycsb_key >= 4500000;
update usertable1 set field1=827,field2=7513,field3=2538,field4=3927,field5=3345,field6=9571,field7=4777,field8=2374,field9=2144,field10=4945 where ycsb_key <= 500000;
update usertable1 set field1=4978,field2=9147,field3=4288,field4=6285,field5=460,field6=7059,field7=7771,field8=3300,field9=5901,field10=5047 where ycsb_key >= 4500000;
update usertable1 set field1=3914,field2=4300,field3=2581,field4=225,field5=9177,field6=8767,field7=8600,field8=3564,field9=2498,field10=438 where ycsb_key >= 4500000;
update usertable1 set field1=6732,field2=7067,field3=7603,field4=4986,field5=645,field6=6951,field7=7115,field8=7658,field9=3450,field10=5627 where ycsb_key >= 4500000;
update usertable1 set field1=6771,field2=3964,field3=4709,field4=5056,field5=3526,field6=896,field7=3398,field8=5472,field9=958,field10=7037 where ycsb_key >= 4500000;
update usertable1 set field1=4631,field2=6364,field3=8991,field4=7415,field5=7410,field6=1152,field7=2671,field8=2953,field9=9118,field10=3004 where ycsb_key >= 4500000;
update usertable1 set field1=6507,field2=5012,field3=63,field4=6929,field5=6698,field6=2636,field7=7953,field8=2417,field9=3484,field10=3862 where ycsb_key >= 4500000;
update usertable1 set field1=7724,field2=2372,field3=9606,field4=6536,field5=7216,field6=3786,field7=8067,field8=1618,field9=4008,field10=607 where ycsb_key >= 4500000;
update usertable1 set field1=3609,field2=2288,field3=8715,field4=8999,field5=2180,field6=974,field7=6995,field8=3446,field9=7468,field10=966 where ycsb_key >= 4500000;
update usertable1 set field1=701,field2=1206,field3=6957,field4=6959,field5=4650,field6=3209,field7=4259,field8=8260,field9=3624,field10=891 where ycsb_key >= 4500000;
update usertable1 set field1=8461,field2=3165,field3=8737,field4=4376,field5=6607,field6=925,field7=1015,field8=9864,field9=9837,field10=7276 where ycsb_key <= 500000;

EXPLAIN ANALYZE (SELECT * FROM usertable EXCEPT SELECT * FROM usertable1) UNION (SELECT * FROM usertable1 EXCEPT SELECT * FROM usertable);
