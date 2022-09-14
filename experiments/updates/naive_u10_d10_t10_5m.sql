\o /dev/null

create temporary table f1 as (select * from f);
create index community_area_index ON f1 (pickup_community_area);
update f1 set fare = fare + 44 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 35 where pickup_community_area >= 33;
update f1 set tolls = tolls + 40 where pickup_community_area >= 33;
update f1 set fare = fare + 77 where pickup_community_area >= 33;
update f1 set tolls = tolls + 32 where pickup_community_area >= 33;
update f1 set fare = fare + 56 where pickup_community_area <= 7;
update f1 set trip_total = trip_total + 52 where pickup_community_area >= 33;
update f1 set extras = extras + 84 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 8 where pickup_community_area >= 33;
update f1 set tolls = tolls + 39 where pickup_community_area >= 33;
update f1 set trip_total = trip_total + 7 where pickup_community_area >= 33;
explain (analyze true, timing false) (select * from f except select * from f1) union (select * from f1 except select * from f);
