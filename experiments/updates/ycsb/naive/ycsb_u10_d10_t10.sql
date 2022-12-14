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

EXPLAIN ANALYZE (SELECT * FROM usertable EXCEPT SELECT * FROM usertable1) UNION (SELECT * FROM usertable1 EXCEPT SELECT * FROM usertable);
