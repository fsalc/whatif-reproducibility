\o /dev/null
\timing ON

create temporary table stock1 as (select * from stock);
create index siid_index ON stock1 (s_i_id);

UPDATE stock1 SET  S_YTD = S_YTD + 6 WHERE S_I_ID <= 10000;
UPDATE stock1 SET  S_YTD = S_YTD + 4 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 6 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 3 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 10 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 10 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 2 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 10 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 4 WHERE S_I_ID >= 90000;
UPDATE stock1 SET  S_YTD = S_YTD + 2 WHERE S_I_ID <= 10000;

EXPLAIN ANALYZE (SELECT * FROM stock EXCEPT SELECT * FROM stock1) UNION (SELECT * FROM stock1 EXCEPT SELECT * FROM stock);
