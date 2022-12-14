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
update usertable1 set field1=162,field2=8168,field3=3467,field4=2526,field5=5442,field6=5652,field7=660,field8=3301,field9=6351,field10=2778 where ycsb_key >= 4500000;
update usertable1 set field1=6164,field2=1821,field3=9484,field4=6231,field5=9718,field6=6437,field7=7867,field8=9073,field9=7213,field10=8880 where ycsb_key >= 4500000;
update usertable1 set field1=6270,field2=368,field3=6336,field4=1233,field5=6206,field6=8639,field7=4964,field8=246,field9=7645,field10=8953 where ycsb_key >= 4500000;
update usertable1 set field1=1917,field2=477,field3=4350,field4=7185,field5=5316,field6=8500,field7=3703,field8=5271,field9=8537,field10=2710 where ycsb_key >= 4500000;
update usertable1 set field1=9913,field2=8129,field3=7565,field4=7166,field5=1562,field6=6300,field7=6387,field8=3330,field9=608,field10=8375 where ycsb_key >= 4500000;
update usertable1 set field1=9025,field2=564,field3=152,field4=3779,field5=7744,field6=4819,field7=2549,field8=9574,field9=7075,field10=5078 where ycsb_key >= 4500000;
update usertable1 set field1=7786,field2=4629,field3=2365,field4=8783,field5=4404,field6=705,field7=9747,field8=769,field9=1764,field10=2777 where ycsb_key >= 4500000;
update usertable1 set field1=1683,field2=4997,field3=2887,field4=298,field5=8494,field6=4782,field7=1766,field8=6970,field9=1685,field10=5160 where ycsb_key >= 4500000;
update usertable1 set field1=7619,field2=9104,field3=9277,field4=495,field5=1300,field6=1644,field7=6858,field8=1554,field9=5847,field10=6555 where ycsb_key >= 4500000;
update usertable1 set field1=596,field2=8853,field3=3949,field4=419,field5=90,field6=3289,field7=46,field8=6808,field9=9595,field10=834 where ycsb_key <= 500000;
update usertable1 set field1=3696,field2=4284,field3=5895,field4=5349,field5=3893,field6=2721,field7=9892,field8=2494,field9=1061,field10=9057 where ycsb_key >= 4500000;
update usertable1 set field1=6864,field2=8116,field3=4639,field4=8554,field5=7236,field6=6522,field7=9326,field8=9168,field9=5709,field10=7584 where ycsb_key >= 4500000;
update usertable1 set field1=2373,field2=4741,field3=1659,field4=6780,field5=7595,field6=7366,field7=7788,field8=8943,field9=9197,field10=531 where ycsb_key >= 4500000;
update usertable1 set field1=7228,field2=4739,field3=9955,field4=2382,field5=1498,field6=8738,field7=3807,field8=2836,field9=3041,field10=9278 where ycsb_key >= 4500000;
update usertable1 set field1=2488,field2=9158,field3=6410,field4=3299,field5=9500,field6=2094,field7=1605,field8=3796,field9=2395,field10=8682 where ycsb_key >= 4500000;
update usertable1 set field1=1544,field2=3630,field3=6114,field4=8470,field5=3215,field6=7050,field7=5995,field8=7010,field9=8641,field10=9455 where ycsb_key >= 4500000;
update usertable1 set field1=8889,field2=4228,field3=7484,field4=6710,field5=4846,field6=5558,field7=7849,field8=7621,field9=9794,field10=569 where ycsb_key >= 4500000;
update usertable1 set field1=5636,field2=7039,field3=1759,field4=7206,field5=5669,field6=2552,field7=9288,field8=9779,field9=9718,field10=4658 where ycsb_key >= 4500000;
update usertable1 set field1=946,field2=5311,field3=7579,field4=8940,field5=9049,field6=6000,field7=7344,field8=8845,field9=9078,field10=5187 where ycsb_key >= 4500000;
update usertable1 set field1=190,field2=9383,field3=8673,field4=433,field5=3115,field6=5307,field7=6499,field8=123,field9=337,field10=2151 where ycsb_key <= 500000;
update usertable1 set field1=1845,field2=9314,field3=346,field4=4871,field5=359,field6=6511,field7=970,field8=6790,field9=9993,field10=5463 where ycsb_key >= 4500000;
update usertable1 set field1=9229,field2=1040,field3=3916,field4=5154,field5=6251,field6=7746,field7=3934,field8=6739,field9=69,field10=2862 where ycsb_key >= 4500000;
update usertable1 set field1=8779,field2=8322,field3=713,field4=8709,field5=6524,field6=7222,field7=2723,field8=2055,field9=9337,field10=4631 where ycsb_key >= 4500000;
update usertable1 set field1=9887,field2=2878,field3=1805,field4=9430,field5=5878,field6=5826,field7=1134,field8=6317,field9=2261,field10=6833 where ycsb_key >= 4500000;
update usertable1 set field1=8678,field2=8406,field3=2298,field4=9351,field5=7457,field6=5956,field7=4973,field8=8219,field9=9589,field10=986 where ycsb_key >= 4500000;
update usertable1 set field1=8672,field2=4330,field3=883,field4=2235,field5=8104,field6=9922,field7=7252,field8=6069,field9=1200,field10=2594 where ycsb_key >= 4500000;
update usertable1 set field1=9046,field2=6810,field3=4959,field4=5956,field5=4909,field6=4217,field7=543,field8=6187,field9=6391,field10=6843 where ycsb_key >= 4500000;
update usertable1 set field1=8225,field2=6733,field3=8129,field4=7392,field5=2285,field6=7872,field7=6158,field8=279,field9=4381,field10=3922 where ycsb_key >= 4500000;
update usertable1 set field1=8673,field2=2168,field3=1510,field4=8523,field5=9367,field6=3436,field7=1248,field8=7594,field9=3411,field10=2217 where ycsb_key >= 4500000;
update usertable1 set field1=2668,field2=322,field3=47,field4=2977,field5=6055,field6=849,field7=3813,field8=8408,field9=8321,field10=7227 where ycsb_key <= 500000;
update usertable1 set field1=8492,field2=6839,field3=3917,field4=9604,field5=4016,field6=7333,field7=2934,field8=6650,field9=6766,field10=1180 where ycsb_key >= 4500000;
update usertable1 set field1=9089,field2=7768,field3=7973,field4=1571,field5=326,field6=8783,field7=3251,field8=2924,field9=3896,field10=465 where ycsb_key >= 4500000;
update usertable1 set field1=8703,field2=7528,field3=5920,field4=2530,field5=5470,field6=9970,field7=2714,field8=531,field9=5133,field10=9156 where ycsb_key >= 4500000;
update usertable1 set field1=4407,field2=382,field3=939,field4=8473,field5=1189,field6=5583,field7=5065,field8=7033,field9=5944,field10=2489 where ycsb_key >= 4500000;
update usertable1 set field1=1048,field2=6019,field3=3891,field4=5854,field5=2356,field6=9055,field7=9616,field8=9566,field9=3020,field10=4200 where ycsb_key >= 4500000;
update usertable1 set field1=8470,field2=9515,field3=1355,field4=9524,field5=4033,field6=5667,field7=9791,field8=4515,field9=2654,field10=7560 where ycsb_key >= 4500000;
update usertable1 set field1=5778,field2=834,field3=1306,field4=8949,field5=4755,field6=9513,field7=4209,field8=5425,field9=1190,field10=6801 where ycsb_key >= 4500000;
update usertable1 set field1=7085,field2=3505,field3=7823,field4=7567,field5=5205,field6=892,field7=6424,field8=3414,field9=2938,field10=5410 where ycsb_key >= 4500000;
update usertable1 set field1=5600,field2=2472,field3=7950,field4=4433,field5=2490,field6=9210,field7=2837,field8=7574,field9=5559,field10=5570 where ycsb_key >= 4500000;
update usertable1 set field1=591,field2=2832,field3=5106,field4=9188,field5=8006,field6=459,field7=6596,field8=577,field9=2903,field10=9391 where ycsb_key <= 500000;
update usertable1 set field1=9493,field2=8728,field3=6890,field4=8233,field5=842,field6=3823,field7=5249,field8=6549,field9=8563,field10=6452 where ycsb_key >= 4500000;
update usertable1 set field1=9503,field2=2432,field3=4130,field4=5096,field5=6251,field6=9233,field7=8121,field8=7472,field9=7908,field10=7699 where ycsb_key >= 4500000;
update usertable1 set field1=4979,field2=6787,field3=7153,field4=9753,field5=5241,field6=978,field7=7093,field8=6679,field9=4503,field10=1522 where ycsb_key >= 4500000;
update usertable1 set field1=3396,field2=7580,field3=8414,field4=8596,field5=3002,field6=3621,field7=2101,field8=990,field9=6411,field10=9802 where ycsb_key >= 4500000;
update usertable1 set field1=1755,field2=8830,field3=4857,field4=9138,field5=8849,field6=7836,field7=9832,field8=7598,field9=5348,field10=7335 where ycsb_key >= 4500000;
update usertable1 set field1=6772,field2=6057,field3=3870,field4=7923,field5=9052,field6=229,field7=3479,field8=1768,field9=4521,field10=77 where ycsb_key >= 4500000;
update usertable1 set field1=570,field2=8862,field3=9288,field4=7405,field5=4578,field6=9776,field7=4343,field8=5809,field9=50,field10=7507 where ycsb_key >= 4500000;
update usertable1 set field1=2798,field2=2801,field3=2622,field4=4563,field5=4784,field6=1991,field7=1473,field8=6555,field9=407,field10=7877 where ycsb_key >= 4500000;
update usertable1 set field1=4963,field2=273,field3=8512,field4=7016,field5=9306,field6=2458,field7=498,field8=7127,field9=2398,field10=5302 where ycsb_key >= 4500000;
update usertable1 set field1=3926,field2=31,field3=6186,field4=6079,field5=236,field6=5236,field7=1359,field8=1269,field9=4558,field10=8434 where ycsb_key <= 500000;
update usertable1 set field1=7533,field2=13,field3=3274,field4=3242,field5=611,field6=7816,field7=6780,field8=5080,field9=6546,field10=9044 where ycsb_key >= 4500000;
update usertable1 set field1=713,field2=3253,field3=7331,field4=5942,field5=8818,field6=1033,field7=725,field8=2659,field9=4554,field10=3798 where ycsb_key >= 4500000;
update usertable1 set field1=9969,field2=5069,field3=6594,field4=2160,field5=3526,field6=1082,field7=5421,field8=383,field9=7751,field10=1530 where ycsb_key >= 4500000;
update usertable1 set field1=4389,field2=413,field3=7317,field4=8770,field5=8799,field6=8321,field7=9225,field8=8673,field9=842,field10=3101 where ycsb_key >= 4500000;
update usertable1 set field1=6234,field2=1804,field3=6545,field4=7400,field5=4723,field6=1290,field7=3294,field8=5976,field9=93,field10=8137 where ycsb_key >= 4500000;
update usertable1 set field1=2936,field2=477,field3=129,field4=9540,field5=5980,field6=8466,field7=2981,field8=2138,field9=7014,field10=543 where ycsb_key >= 4500000;
update usertable1 set field1=1825,field2=93,field3=81,field4=1854,field5=2660,field6=7369,field7=5471,field8=3352,field9=5210,field10=4664 where ycsb_key >= 4500000;
update usertable1 set field1=6144,field2=3737,field3=9419,field4=4057,field5=2849,field6=5171,field7=1670,field8=8647,field9=1871,field10=4593 where ycsb_key >= 4500000;
update usertable1 set field1=5503,field2=187,field3=8306,field4=7729,field5=1372,field6=5041,field7=796,field8=4750,field9=8753,field10=7681 where ycsb_key >= 4500000;
update usertable1 set field1=699,field2=4926,field3=1790,field4=1357,field5=9849,field6=2606,field7=6598,field8=7592,field9=6253,field10=8384 where ycsb_key <= 500000;
update usertable1 set field1=4311,field2=9716,field3=6317,field4=7400,field5=9016,field6=768,field7=5571,field8=1399,field9=3840,field10=2813 where ycsb_key >= 4500000;
update usertable1 set field1=7209,field2=2367,field3=1609,field4=2926,field5=9236,field6=3377,field7=8755,field8=965,field9=6540,field10=6592 where ycsb_key >= 4500000;
update usertable1 set field1=2423,field2=5585,field3=3767,field4=9310,field5=1119,field6=7916,field7=8530,field8=6378,field9=8640,field10=6804 where ycsb_key >= 4500000;
update usertable1 set field1=2194,field2=1368,field3=9520,field4=5612,field5=7234,field6=9461,field7=1787,field8=8162,field9=5999,field10=2191 where ycsb_key >= 4500000;
update usertable1 set field1=9418,field2=633,field3=5611,field4=7882,field5=2571,field6=6939,field7=7680,field8=1922,field9=8394,field10=7475 where ycsb_key >= 4500000;
update usertable1 set field1=9531,field2=7840,field3=9011,field4=4930,field5=5715,field6=3583,field7=6177,field8=6386,field9=4743,field10=7344 where ycsb_key >= 4500000;
update usertable1 set field1=7610,field2=8731,field3=2978,field4=3077,field5=429,field6=5682,field7=7491,field8=5420,field9=8951,field10=6469 where ycsb_key >= 4500000;
update usertable1 set field1=4471,field2=5706,field3=3443,field4=1596,field5=5546,field6=266,field7=1339,field8=1798,field9=6344,field10=5738 where ycsb_key >= 4500000;
update usertable1 set field1=549,field2=9258,field3=5063,field4=1421,field5=9003,field6=9074,field7=3486,field8=2572,field9=206,field10=5996 where ycsb_key >= 4500000;
update usertable1 set field1=9512,field2=6794,field3=5419,field4=3578,field5=1866,field6=9824,field7=7971,field8=1631,field9=8352,field10=2813 where ycsb_key <= 500000;
update usertable1 set field1=4181,field2=3150,field3=8733,field4=475,field5=8338,field6=3702,field7=2124,field8=8385,field9=6331,field10=4720 where ycsb_key >= 4500000;
update usertable1 set field1=6647,field2=8128,field3=3607,field4=7062,field5=6020,field6=1002,field7=8383,field8=2791,field9=3738,field10=4570 where ycsb_key >= 4500000;
update usertable1 set field1=460,field2=5958,field3=5301,field4=8048,field5=2497,field6=5483,field7=2198,field8=8729,field9=5478,field10=7589 where ycsb_key >= 4500000;
update usertable1 set field1=5374,field2=4871,field3=2884,field4=2223,field5=1835,field6=1003,field7=9117,field8=209,field9=9887,field10=6298 where ycsb_key >= 4500000;
update usertable1 set field1=7094,field2=9689,field3=152,field4=8042,field5=4068,field6=2090,field7=930,field8=588,field9=4605,field10=3451 where ycsb_key >= 4500000;
update usertable1 set field1=5038,field2=9452,field3=2738,field4=4085,field5=9251,field6=9038,field7=565,field8=3237,field9=4057,field10=2709 where ycsb_key >= 4500000;
update usertable1 set field1=804,field2=2182,field3=4069,field4=8313,field5=1191,field6=7894,field7=769,field8=1551,field9=5447,field10=6429 where ycsb_key >= 4500000;
update usertable1 set field1=9382,field2=9440,field3=8471,field4=9455,field5=6385,field6=3188,field7=4235,field8=5626,field9=1144,field10=4175 where ycsb_key >= 4500000;
update usertable1 set field1=9656,field2=4606,field3=6330,field4=2476,field5=4438,field6=9906,field7=6158,field8=2815,field9=6599,field10=9462 where ycsb_key >= 4500000;
update usertable1 set field1=5981,field2=8031,field3=1589,field4=4610,field5=5938,field6=748,field7=6377,field8=8207,field9=9623,field10=7542 where ycsb_key <= 500000;
update usertable1 set field1=9517,field2=1531,field3=8396,field4=3634,field5=7888,field6=1944,field7=8519,field8=6371,field9=4417,field10=9083 where ycsb_key >= 4500000;
update usertable1 set field1=8382,field2=7947,field3=8024,field4=9338,field5=8292,field6=9336,field7=2990,field8=1976,field9=4551,field10=5529 where ycsb_key >= 4500000;
update usertable1 set field1=52,field2=5351,field3=2906,field4=6805,field5=5570,field6=8374,field7=3822,field8=1995,field9=8346,field10=631 where ycsb_key >= 4500000;
update usertable1 set field1=3490,field2=7496,field3=5874,field4=4379,field5=13,field6=88,field7=3115,field8=3011,field9=3772,field10=2592 where ycsb_key >= 4500000;
update usertable1 set field1=7245,field2=3531,field3=4635,field4=8804,field5=1259,field6=5064,field7=6369,field8=8214,field9=7777,field10=1524 where ycsb_key >= 4500000;
update usertable1 set field1=374,field2=1613,field3=1982,field4=4149,field5=6707,field6=5831,field7=9196,field8=8830,field9=249,field10=9582 where ycsb_key >= 4500000;
update usertable1 set field1=8296,field2=3909,field3=3805,field4=2682,field5=6901,field6=6420,field7=7978,field8=7730,field9=8055,field10=8649 where ycsb_key >= 4500000;
update usertable1 set field1=9709,field2=6774,field3=1015,field4=2296,field5=7535,field6=5439,field7=636,field8=4559,field9=1812,field10=3531 where ycsb_key >= 4500000;
update usertable1 set field1=867,field2=9003,field3=2423,field4=4232,field5=7920,field6=4201,field7=4823,field8=3656,field9=7748,field10=4844 where ycsb_key >= 4500000;
update usertable1 set field1=4102,field2=826,field3=4973,field4=8026,field5=3821,field6=3064,field7=4365,field8=6242,field9=8294,field10=7606 where ycsb_key <= 500000;
update usertable1 set field1=3663,field2=6850,field3=1598,field4=4768,field5=7068,field6=1377,field7=2889,field8=7789,field9=995,field10=591 where ycsb_key >= 4500000;
update usertable1 set field1=291,field2=629,field3=8715,field4=8930,field5=6400,field6=4216,field7=3720,field8=1930,field9=9605,field10=8670 where ycsb_key >= 4500000;
update usertable1 set field1=2422,field2=7778,field3=4235,field4=7890,field5=3864,field6=2561,field7=417,field8=3345,field9=5270,field10=3687 where ycsb_key >= 4500000;
update usertable1 set field1=1428,field2=5892,field3=7478,field4=7555,field5=2327,field6=8038,field7=3536,field8=5599,field9=8718,field10=4145 where ycsb_key >= 4500000;
update usertable1 set field1=7110,field2=7510,field3=8551,field4=2825,field5=4712,field6=1664,field7=3116,field8=3965,field9=7238,field10=549 where ycsb_key >= 4500000;
update usertable1 set field1=5559,field2=2677,field3=1801,field4=3348,field5=6585,field6=3840,field7=4440,field8=8741,field9=7345,field10=3805 where ycsb_key >= 4500000;
update usertable1 set field1=7920,field2=8436,field3=8977,field4=395,field5=6547,field6=6018,field7=6684,field8=8345,field9=1695,field10=6250 where ycsb_key >= 4500000;
update usertable1 set field1=3854,field2=4974,field3=7546,field4=7153,field5=8290,field6=81,field7=6483,field8=903,field9=8317,field10=4789 where ycsb_key >= 4500000;
update usertable1 set field1=7480,field2=9862,field3=1243,field4=6385,field5=8895,field6=907,field7=496,field8=88,field9=9114,field10=4628 where ycsb_key >= 4500000;
update usertable1 set field1=561,field2=4094,field3=4664,field4=5957,field5=816,field6=1281,field7=5617,field8=9277,field9=322,field10=9494 where ycsb_key <= 500000;
update usertable1 set field1=2337,field2=4214,field3=5680,field4=2467,field5=6022,field6=7917,field7=3190,field8=5131,field9=7809,field10=5901 where ycsb_key >= 4500000;
update usertable1 set field1=4696,field2=313,field3=7720,field4=6275,field5=3758,field6=8623,field7=5220,field8=1538,field9=5093,field10=9732 where ycsb_key >= 4500000;
update usertable1 set field1=7744,field2=8034,field3=5562,field4=1176,field5=2194,field6=5632,field7=9441,field8=292,field9=7105,field10=9209 where ycsb_key >= 4500000;
update usertable1 set field1=4170,field2=6012,field3=9958,field4=9147,field5=5328,field6=9818,field7=4937,field8=163,field9=1222,field10=9378 where ycsb_key >= 4500000;
update usertable1 set field1=1328,field2=6571,field3=8102,field4=4125,field5=1705,field6=7305,field7=6799,field8=9358,field9=2076,field10=5902 where ycsb_key >= 4500000;
update usertable1 set field1=343,field2=4322,field3=3234,field4=9066,field5=12,field6=163,field7=3694,field8=2368,field9=4163,field10=5645 where ycsb_key >= 4500000;
update usertable1 set field1=9829,field2=3203,field3=186,field4=2110,field5=8048,field6=9210,field7=4993,field8=4248,field9=7223,field10=5009 where ycsb_key >= 4500000;
update usertable1 set field1=3525,field2=9973,field3=6940,field4=1345,field5=7979,field6=916,field7=8625,field8=8506,field9=2651,field10=4906 where ycsb_key >= 4500000;
update usertable1 set field1=2085,field2=223,field3=623,field4=3126,field5=9628,field6=5180,field7=8874,field8=7639,field9=3508,field10=711 where ycsb_key >= 4500000;
update usertable1 set field1=7793,field2=9419,field3=222,field4=7334,field5=9608,field6=3133,field7=6868,field8=3310,field9=7747,field10=2516 where ycsb_key <= 500000;
update usertable1 set field1=683,field2=5632,field3=5788,field4=9392,field5=2719,field6=7533,field7=305,field8=126,field9=586,field10=2892 where ycsb_key >= 4500000;
update usertable1 set field1=6691,field2=5631,field3=3221,field4=4772,field5=781,field6=4898,field7=2703,field8=8722,field9=2028,field10=7495 where ycsb_key >= 4500000;
update usertable1 set field1=4292,field2=1456,field3=5835,field4=7451,field5=6054,field6=2039,field7=3705,field8=9517,field9=3735,field10=5831 where ycsb_key >= 4500000;
update usertable1 set field1=9858,field2=8938,field3=4845,field4=1065,field5=2119,field6=7521,field7=8318,field8=4190,field9=3033,field10=2086 where ycsb_key >= 4500000;
update usertable1 set field1=2578,field2=2865,field3=4393,field4=6155,field5=5340,field6=4857,field7=4704,field8=2146,field9=3071,field10=6988 where ycsb_key >= 4500000;
update usertable1 set field1=4407,field2=9256,field3=6674,field4=755,field5=8176,field6=1724,field7=2654,field8=287,field9=7030,field10=3245 where ycsb_key >= 4500000;
update usertable1 set field1=5808,field2=3875,field3=5595,field4=5907,field5=301,field6=2498,field7=1430,field8=6235,field9=880,field10=7473 where ycsb_key >= 4500000;
update usertable1 set field1=4028,field2=6658,field3=4949,field4=4633,field5=829,field6=8059,field7=9221,field8=4307,field9=6377,field10=7903 where ycsb_key >= 4500000;
update usertable1 set field1=1767,field2=4761,field3=8617,field4=8914,field5=1412,field6=1734,field7=3271,field8=5267,field9=1629,field10=8256 where ycsb_key >= 4500000;
update usertable1 set field1=3174,field2=6800,field3=5367,field4=6995,field5=4554,field6=6909,field7=555,field8=2075,field9=6305,field10=6473 where ycsb_key <= 500000;
update usertable1 set field1=3444,field2=8503,field3=1509,field4=4382,field5=8372,field6=5136,field7=2669,field8=5093,field9=8093,field10=1459 where ycsb_key >= 4500000;
update usertable1 set field1=3454,field2=4986,field3=8351,field4=9368,field5=70,field6=2254,field7=4052,field8=8601,field9=4837,field10=9541 where ycsb_key >= 4500000;
update usertable1 set field1=2086,field2=8505,field3=3012,field4=4620,field5=7598,field6=9433,field7=1462,field8=2039,field9=6371,field10=4192 where ycsb_key >= 4500000;
update usertable1 set field1=4387,field2=7826,field3=5853,field4=3728,field5=6987,field6=115,field7=1317,field8=1471,field9=2684,field10=874 where ycsb_key >= 4500000;
update usertable1 set field1=1670,field2=7644,field3=3319,field4=7773,field5=1499,field6=8227,field7=4605,field8=690,field9=2089,field10=3258 where ycsb_key >= 4500000;
update usertable1 set field1=1040,field2=4333,field3=4353,field4=5651,field5=5462,field6=7056,field7=876,field8=4856,field9=8499,field10=6022 where ycsb_key >= 4500000;
update usertable1 set field1=2613,field2=9298,field3=2246,field4=610,field5=8165,field6=7781,field7=706,field8=9174,field9=24,field10=2815 where ycsb_key >= 4500000;
update usertable1 set field1=6750,field2=9099,field3=2686,field4=8173,field5=1650,field6=6466,field7=2104,field8=8894,field9=8620,field10=9587 where ycsb_key >= 4500000;
update usertable1 set field1=4620,field2=4412,field3=6185,field4=152,field5=6198,field6=4537,field7=732,field8=6825,field9=9552,field10=3593 where ycsb_key >= 4500000;
update usertable1 set field1=109,field2=8728,field3=7598,field4=194,field5=1763,field6=451,field7=6558,field8=8846,field9=9581,field10=5980 where ycsb_key <= 500000;
update usertable1 set field1=971,field2=4849,field3=3346,field4=6243,field5=5925,field6=5826,field7=3485,field8=3857,field9=8866,field10=1611 where ycsb_key >= 4500000;
update usertable1 set field1=1695,field2=9100,field3=4507,field4=9186,field5=4905,field6=3118,field7=1551,field8=910,field9=6074,field10=7965 where ycsb_key >= 4500000;
update usertable1 set field1=9227,field2=2369,field3=315,field4=8190,field5=4936,field6=830,field7=9000,field8=5363,field9=1740,field10=6515 where ycsb_key >= 4500000;
update usertable1 set field1=7636,field2=5200,field3=5844,field4=6680,field5=5559,field6=6770,field7=9756,field8=6835,field9=6786,field10=4600 where ycsb_key >= 4500000;
update usertable1 set field1=6392,field2=4361,field3=1722,field4=7498,field5=3031,field6=7234,field7=8854,field8=2354,field9=1725,field10=4597 where ycsb_key >= 4500000;
update usertable1 set field1=4036,field2=7290,field3=4545,field4=6544,field5=2533,field6=6123,field7=7878,field8=7603,field9=5584,field10=5326 where ycsb_key >= 4500000;
update usertable1 set field1=9858,field2=2152,field3=8947,field4=5390,field5=9012,field6=269,field7=5586,field8=834,field9=166,field10=9370 where ycsb_key >= 4500000;
update usertable1 set field1=8502,field2=6974,field3=5789,field4=409,field5=2530,field6=6994,field7=7055,field8=7345,field9=5889,field10=9883 where ycsb_key >= 4500000;
update usertable1 set field1=9135,field2=5171,field3=3213,field4=8345,field5=9472,field6=4848,field7=1887,field8=5939,field9=6162,field10=3160 where ycsb_key >= 4500000;
update usertable1 set field1=7294,field2=4531,field3=3135,field4=7154,field5=7760,field6=8355,field7=4013,field8=2080,field9=8678,field10=6561 where ycsb_key <= 500000;
update usertable1 set field1=1767,field2=3015,field3=3520,field4=134,field5=1500,field6=7863,field7=77,field8=6617,field9=24,field10=3267 where ycsb_key >= 4500000;
update usertable1 set field1=5356,field2=2694,field3=6867,field4=5158,field5=9624,field6=1309,field7=3028,field8=1694,field9=3428,field10=8857 where ycsb_key >= 4500000;
update usertable1 set field1=7924,field2=2378,field3=4462,field4=9825,field5=3806,field6=5978,field7=8204,field8=4683,field9=4757,field10=353 where ycsb_key >= 4500000;
update usertable1 set field1=7395,field2=1786,field3=4331,field4=9246,field5=664,field6=5585,field7=1843,field8=4717,field9=9818,field10=1531 where ycsb_key >= 4500000;
update usertable1 set field1=2427,field2=8970,field3=8710,field4=2740,field5=19,field6=6052,field7=3927,field8=4664,field9=5656,field10=2146 where ycsb_key >= 4500000;
update usertable1 set field1=9048,field2=1848,field3=5690,field4=2969,field5=9712,field6=5163,field7=5815,field8=8213,field9=6303,field10=8809 where ycsb_key >= 4500000;
update usertable1 set field1=7166,field2=5844,field3=4756,field4=3897,field5=198,field6=3643,field7=3616,field8=9393,field9=492,field10=1379 where ycsb_key >= 4500000;
update usertable1 set field1=7327,field2=1850,field3=8232,field4=4661,field5=1493,field6=2481,field7=9677,field8=710,field9=5791,field10=3879 where ycsb_key >= 4500000;
update usertable1 set field1=4633,field2=7023,field3=4151,field4=8926,field5=8685,field6=6231,field7=9833,field8=1336,field9=2709,field10=4323 where ycsb_key >= 4500000;
update usertable1 set field1=5128,field2=629,field3=5089,field4=4852,field5=1521,field6=4355,field7=3953,field8=8743,field9=6412,field10=6878 where ycsb_key <= 500000;

EXPLAIN ANALYZE (SELECT * FROM usertable EXCEPT SELECT * FROM usertable1) UNION (SELECT * FROM usertable1 EXCEPT SELECT * FROM usertable);
