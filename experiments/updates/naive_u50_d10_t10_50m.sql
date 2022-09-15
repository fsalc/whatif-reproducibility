\o /dev/null
\timing ON

create temporary table g1 as (select * from g);
create index community_area_index ON g1 (pickup_community_area);

update g1 set trip_total = trip_total + 33 where pickup_community_area <= 7;
update g1 set tolls = tolls + 87 where pickup_community_area >= 33;
update g1 set extras = extras + 99 where pickup_community_area >= 33;
update g1 set fare = fare + 87 where pickup_community_area >= 33;
update g1 set extras = extras + 35 where pickup_community_area >= 33;
update g1 set extras = extras + 49 where pickup_community_area >= 33;
update g1 set extras = extras + 56 where pickup_community_area >= 33;
update g1 set extras = extras + 54 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 97 where pickup_community_area >= 33;
update g1 set extras = extras + 89 where pickup_community_area >= 33;
update g1 set extras = extras + 26 where pickup_community_area >= 33;
update g1 set tolls = tolls + 39 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 54 where pickup_community_area >= 33;
update g1 set tolls = tolls + 63 where pickup_community_area >= 33;
update g1 set extras = extras + 81 where pickup_community_area >= 33;
update g1 set extras = extras + 0 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 93 where pickup_community_area >= 33;
update g1 set extras = extras + 60 where pickup_community_area >= 33;
update g1 set fare = fare + 12 where pickup_community_area >= 33;
update g1 set tolls = tolls + 98 where pickup_community_area >= 33;
update g1 set fare = fare + 48 where pickup_community_area >= 33;
update g1 set fare = fare + 33 where pickup_community_area <= 7;
update g1 set extras = extras + 83 where pickup_community_area <= 7;
update g1 set trip_total = trip_total + 76 where pickup_community_area <= 7;
update g1 set extras = extras + 7 where pickup_community_area <= 7;
update g1 set fare = fare + 83 where pickup_community_area <= 7;
update g1 set trip_total = trip_total + 34 where pickup_community_area >= 33;
update g1 set fare = fare + 30 where pickup_community_area >= 33;
update g1 set fare = fare + 15 where pickup_community_area >= 33;
update g1 set fare = fare + 49 where pickup_community_area >= 33;
update g1 set tolls = tolls + 19 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 96 where pickup_community_area >= 33;
update g1 set tolls = tolls + 97 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 67 where pickup_community_area >= 33;
update g1 set extras = extras + 62 where pickup_community_area >= 33;
update g1 set tolls = tolls + 19 where pickup_community_area >= 33;
update g1 set fare = fare + 96 where pickup_community_area >= 33;
update g1 set fare = fare + 56 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 1 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 61 where pickup_community_area >= 33;
update g1 set tolls = tolls + 53 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 4 where pickup_community_area >= 33;
update g1 set extras = extras + 74 where pickup_community_area >= 33;
update g1 set tolls = tolls + 46 where pickup_community_area >= 33;
update g1 set extras = extras + 53 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 9 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 11 where pickup_community_area >= 33;
update g1 set extras = extras + 59 where pickup_community_area >= 33;
update g1 set trip_total = trip_total + 11 where pickup_community_area >= 33;
update g1 set fare = fare + 26 where pickup_community_area >= 33;
update g1 set extras = extras + 70 where pickup_community_area >= 33;

explain analyze (select * from g except select * from g1) union (select * from g1 except select * from g);
