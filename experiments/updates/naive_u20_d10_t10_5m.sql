\o /dev/null

create temporary table f1 as (select * from f);
create index community_area_index ON f1 (pickup_community_area);
update f1 set fare = fare + 53 where pickup_community_area <= 7;
update f1 set fare = fare + 88 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 20 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 54 where pickup_community_area >= 33;
update f1 set tolls = tolls + 50 where pickup_community_area >= 33;
update f1 set extras = extras + 60 where pickup_community_area >= 33;
update f1 set extras = extras + 99 where pickup_community_area >= 33;
update f1 set extras = extras + 50 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 57 where pickup_community_area >= 33;
update f1 set tolls = tolls + 61 where pickup_community_area <= 7;
update f1 set extras = extras + 97 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 38 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 5 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 49 where pickup_community_area >= 33;
update f1 set tolls = tolls + 40 where pickup_community_area >= 33;
update f1 set extras = extras + 30 where pickup_community_area >= 33;
update f1 set extras = extras + 93 where pickup_community_area >= 33;
update f1 set extras = extras + 50 where pickup_community_area >= 33;
update f1 set fare = fare + 24 where pickup_community_area >= 33;
update f1 set tolls = tolls + 3 where pickup_community_area >= 33;
update f1 set extras = extras + 26 where pickup_community_area >= 33;
explain (analyze true, timing false) (select * from f except select * from f1) union (select * from f1 except select * from f);
