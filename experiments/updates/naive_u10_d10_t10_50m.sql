\o /dev/null

create temporary table g1 as (select * from g);
create index community_area_index ON g1 (pickup_community_area);

update g1 set fare = fare + 44 where pickup_community_area <= 7;
update g1 set trip_total = trip_total + 35 where pickup_community_area >= 33;
update g1 set tolls = tolls + 40 where pickup_community_area >= 33;
update g1 set fare = fare + 77 where pickup_community_area >= 33;
update g1 set tolls = tolls + 32 where pickup_community_area >= 33;
update g1 set fare = fare + 56 where pickup_community_area <= 7;
update g1 set trip_total = trip_total + 52 where pickup_community_area >= 33;
update g1 set extras = extras + 84 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 8 where pickup_community_area >= 33;
update g1 set tolls = tolls + 39 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 7 where pickup_community_area >= 33;
explain (analyze true, timing false) (select * from g except select * from g1) union (select * from g1 except select * from g);
