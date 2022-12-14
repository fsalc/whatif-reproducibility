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
update usertable1 set field1=2678,field2=3142,field3=7204,field4=522,field5=3430,field6=1714,field7=3732,field8=7802,field9=9849,field10=213 where ycsb_key >= 4500000;
update usertable1 set field1=904,field2=5387,field3=906,field4=2474,field5=8411,field6=2565,field7=1562,field8=8928,field9=5776,field10=6008 where ycsb_key >= 4500000;
update usertable1 set field1=9418,field2=9836,field3=1215,field4=398,field5=6500,field6=3269,field7=2998,field8=1512,field9=9350,field10=1730 where ycsb_key >= 4500000;
update usertable1 set field1=5485,field2=9978,field3=5856,field4=2835,field5=7974,field6=7470,field7=6487,field8=7579,field9=9596,field10=2259 where ycsb_key >= 4500000;
update usertable1 set field1=932,field2=4345,field3=7556,field4=7691,field5=8547,field6=8070,field7=9217,field8=5442,field9=2468,field10=1741 where ycsb_key >= 4500000;
update usertable1 set field1=761,field2=5221,field3=2740,field4=1738,field5=6445,field6=3921,field7=3444,field8=9470,field9=2853,field10=234 where ycsb_key >= 4500000;
update usertable1 set field1=2377,field2=9202,field3=1940,field4=5164,field5=9621,field6=6001,field7=5187,field8=5009,field9=3035,field10=8361 where ycsb_key >= 4500000;
update usertable1 set field1=8692,field2=963,field3=4582,field4=7156,field5=5682,field6=8692,field7=1281,field8=6380,field9=8554,field10=2006 where ycsb_key >= 4500000;
update usertable1 set field1=8516,field2=1327,field3=7328,field4=7033,field5=1469,field6=6780,field7=5181,field8=7209,field9=2523,field10=1144 where ycsb_key >= 4500000;
update usertable1 set field1=4581,field2=4805,field3=8607,field4=2449,field5=9489,field6=1759,field7=2681,field8=8667,field9=53,field10=1083 where ycsb_key <= 500000;
update usertable1 set field1=7817,field2=7907,field3=6294,field4=311,field5=647,field6=3673,field7=6376,field8=90,field9=3384,field10=6634 where ycsb_key >= 4500000;
update usertable1 set field1=3238,field2=4287,field3=28,field4=7103,field5=601,field6=2813,field7=2908,field8=1783,field9=5648,field10=4715 where ycsb_key >= 4500000;
update usertable1 set field1=313,field2=4250,field3=1053,field4=7055,field5=4559,field6=1102,field7=3462,field8=4563,field9=2590,field10=4746 where ycsb_key >= 4500000;
update usertable1 set field1=8985,field2=6157,field3=7955,field4=9385,field5=8850,field6=7007,field7=3828,field8=8927,field9=9944,field10=9051 where ycsb_key >= 4500000;
update usertable1 set field1=1661,field2=4267,field3=5662,field4=8579,field5=8970,field6=2646,field7=2215,field8=6864,field9=2820,field10=3692 where ycsb_key >= 4500000;
update usertable1 set field1=4340,field2=8644,field3=2606,field4=5092,field5=2232,field6=3753,field7=6924,field8=5864,field9=8425,field10=9146 where ycsb_key >= 4500000;
update usertable1 set field1=4470,field2=6708,field3=9341,field4=2175,field5=8234,field6=5012,field7=1290,field8=1071,field9=5531,field10=6758 where ycsb_key >= 4500000;
update usertable1 set field1=4785,field2=5281,field3=3851,field4=8778,field5=4237,field6=6574,field7=3926,field8=2616,field9=2317,field10=1632 where ycsb_key >= 4500000;
update usertable1 set field1=6956,field2=5561,field3=9581,field4=8214,field5=2505,field6=5368,field7=298,field8=9941,field9=7219,field10=2624 where ycsb_key >= 4500000;
update usertable1 set field1=4869,field2=9236,field3=2232,field4=8761,field5=7684,field6=4014,field7=8883,field8=8300,field9=6847,field10=1362 where ycsb_key <= 500000;
update usertable1 set field1=8205,field2=1106,field3=8767,field4=614,field5=9538,field6=4096,field7=6330,field8=9012,field9=7564,field10=2182 where ycsb_key >= 4500000;
update usertable1 set field1=4072,field2=5414,field3=5095,field4=5039,field5=7589,field6=1427,field7=1020,field8=9715,field9=7274,field10=4763 where ycsb_key >= 4500000;
update usertable1 set field1=8947,field2=9065,field3=8397,field4=6617,field5=2295,field6=2515,field7=529,field8=3439,field9=5859,field10=8785 where ycsb_key >= 4500000;
update usertable1 set field1=9365,field2=3592,field3=2196,field4=9820,field5=3101,field6=1087,field7=3560,field8=1438,field9=3705,field10=1817 where ycsb_key >= 4500000;
update usertable1 set field1=6610,field2=8943,field3=661,field4=2555,field5=7570,field6=5358,field7=1041,field8=9337,field9=165,field10=5765 where ycsb_key >= 4500000;
update usertable1 set field1=5154,field2=9796,field3=7255,field4=3776,field5=1417,field6=3518,field7=9810,field8=5164,field9=7599,field10=5555 where ycsb_key >= 4500000;
update usertable1 set field1=3633,field2=9265,field3=8120,field4=848,field5=5083,field6=949,field7=8719,field8=1523,field9=1913,field10=4669 where ycsb_key >= 4500000;
update usertable1 set field1=459,field2=4746,field3=4318,field4=7355,field5=4783,field6=6161,field7=4305,field8=8820,field9=137,field10=2815 where ycsb_key >= 4500000;
update usertable1 set field1=8551,field2=6684,field3=8529,field4=9877,field5=1092,field6=7866,field7=7328,field8=7506,field9=7377,field10=156 where ycsb_key >= 4500000;
update usertable1 set field1=7571,field2=7767,field3=468,field4=5538,field5=5128,field6=6605,field7=3534,field8=1543,field9=5155,field10=2610 where ycsb_key <= 500000;

EXPLAIN ANALYZE (SELECT * FROM usertable EXCEPT SELECT * FROM usertable1) UNION (SELECT * FROM usertable1 EXCEPT SELECT * FROM usertable);
