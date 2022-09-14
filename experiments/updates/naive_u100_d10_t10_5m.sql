\o /dev/null

create temporary table f1 as (select * from f);
create index community_area_index ON f1 (pickup_community_area);
update f1 set tolls = tolls + 0 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 91 where pickup_community_area >= 33;
update f1 set fare = fare + 19 where pickup_community_area >= 33;
update f1 set extras = extras + 39 where pickup_community_area >= 33;
update f1 set fare = fare + 10 where pickup_community_area >= 33;
update f1 set extras = extras + 37 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 87 where pickup_community_area >= 33;
update f1 set extras = extras + 84 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 79 where pickup_community_area >= 33;
update f1 set fare = fare + 13 where pickup_community_area >= 33;
update f1 set fare = fare + 59 where pickup_community_area >= 33;
update f1 set extras = extras + 90 where pickup_community_area >= 33;
update f1 set tolls = tolls + 27 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 29 where pickup_community_area >= 33;
update f1 set fare = fare + 56 where pickup_community_area >= 33;
update f1 set extras = extras + 69 where pickup_community_area >= 33;
update f1 set extras = extras + 18 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 97 where pickup_community_area >= 33;
update f1 set fare = fare + 39 where pickup_community_area >= 33;
update f1 set tolls = tolls + 1 where pickup_community_area >= 33;
update f1 set extras = extras + 84 where pickup_community_area >= 33;
update f1 set extras = extras + 27 where pickup_community_area >= 33;
update f1 set fare = fare + 7 where pickup_community_area >= 33;
update f1 set tolls = tolls + 25 where pickup_community_area >= 33;
update f1 set extras = extras + 84 where pickup_community_area >= 33;
update f1 set fare = fare + 42 where pickup_community_area >= 33;
update f1 set tolls = tolls + 70 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 16 where pickup_community_area >= 33;
update f1 set fare = fare + 45 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 77 where pickup_community_area >= 33;
update f1 set tolls = tolls + 53 where pickup_community_area >= 33;
update f1 set tolls = tolls + 78 where pickup_community_area >= 33;
update f1 set extras = extras + 31 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 87 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 80 where pickup_community_area >= 33;
update f1 set tolls = tolls + 66 where pickup_community_area >= 33;
update f1 set tolls = tolls + 60 where pickup_community_area >= 33;
update f1 set tolls = tolls + 11 where pickup_community_area >= 33;
update f1 set extras = extras + 26 where pickup_community_area >= 8;
update f1 set trip_total = trip_total + 95 where pickup_community_area >= 33;
update f1 set tolls = tolls + 65 where pickup_community_area >= 33;
update f1 set fare = fare + 24 where pickup_community_area <= 7;
update f1 set tolls = tolls + 22 where pickup_community_area <= 7;
update f1 set tolls = tolls + 80 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 58 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 10 where pickup_community_area <= 7;
update f1 set tolls = tolls + 68 where pickup_community_area <= 7;
update f1 set fare = fare + 54 where pickup_community_area <= 7;
update f1 set extras = extras + 87 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 0 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 94 where pickup_community_area <= 7;
update f1 set extras = extras + 24 where pickup_community_area >= 33;
update f1 set extras = extras + 69 where pickup_community_area >= 33;
update f1 set tolls = tolls + 27 where pickup_community_area >= 33;
update f1 set tolls = tolls + 69 where pickup_community_area >= 33;
update f1 set fare = fare + 80 where pickup_community_area >= 33;
update f1 set tolls = tolls + 79 where pickup_community_area >= 33;
update f1 set fare = fare + 37 where pickup_community_area >= 33;
update f1 set tolls = tolls + 90 where pickup_community_area >= 33;
update f1 set tolls = tolls + 66 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 90 where pickup_community_area >= 33;
update f1 set fare = fare + 72 where pickup_community_area >= 33;
update f1 set extras = extras + 15 where pickup_community_area >= 33;
update f1 set extras = extras + 62 where pickup_community_area >= 33;
update f1 set fare = fare + 100 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 46 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 81 where pickup_community_area >= 33;
update f1 set extras = extras + 33 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 20 where pickup_community_area >= 33;
update f1 set fare = fare + 9 where pickup_community_area >= 33;
update f1 set tolls = tolls + 52 where pickup_community_area >= 33;
update f1 set fare = fare + 25 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 41 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 60 where pickup_community_area >= 33;
update f1 set extras = extras + 96 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 27 where pickup_community_area >= 33;
update f1 set extras = extras + 86 where pickup_community_area >= 33;
update f1 set extras = extras + 66 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 34 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 91 where pickup_community_area >= 33;
update f1 set fare = fare + 18 where pickup_community_area >= 33;
update f1 set extras = extras + 42 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 31 where pickup_community_area >= 33;
update f1 set tolls = tolls + 36 where pickup_community_area >= 33;
update f1 set tolls = tolls + 69 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 36 where pickup_community_area >= 33;
update f1 set fare = fare + 84 where pickup_community_area >= 33;
update f1 set tolls = tolls + 62 where pickup_community_area >= 33;
update f1 set fare = fare + 1 where pickup_community_area >= 33;
update f1 set extras = extras + 91 where pickup_community_area >= 33;
update f1 set tolls = tolls + 67 where pickup_community_area >= 33;
update f1 set tolls = tolls + 21 where pickup_community_area >= 33;
update f1 set fare = fare + 31 where pickup_community_area >= 33;
update f1 set extras = extras + 15 where pickup_community_area >= 33;
update f1 set extras = extras + 88 where pickup_community_area >= 33;
update f1 set extras = extras + 54 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 66 where pickup_community_area >= 33;
update f1 set fare = fare + 85 where pickup_community_area >= 33;
update f1 set extras = extras + 21 where pickup_community_area >= 33;
update f1 set tolls = tolls + 45 where pickup_community_area >= 33;
update f1 set tolls = tolls + 60 where pickup_community_area >= 33;
explain (analyze true, timing false) (select * from f except select * from f1) union (select * from f1 except select * from f);