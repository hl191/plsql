-- select the difference between the number of cities in station and the distinct city names
-- https://www.hackerrank.com/challenges/weather-observation-station-4/

with total_cities as (select count(city) as total from station),
     unique_cities as (select count(distinct city) as uniques from station)
select total_cities.total - unique_cities.uniques as difference from total_cities, unique_cities;

-- select min and max city length
-- https://www.hackerrank.com/challenges/weather-observation-station-5/
with max_city_length as (select max(length(city)) AS val from station),
     min_city_length as (select min(length(city)) AS val from station),
     min_city as (select city, length(city) from station, min_city_length where length(city) = min_city_length.val order by city asc),
     max_city as (select city, length(city) from station, max_city_length where length(city) = max_city_length.val order by city asc)
select * from min_city where rownum = 1
UNION
select * from max_city where rownum = 1;

-- order by last 3 chars of name
-- https://www.hackerrank.com/challenges/more-than-75-marks/
select name from students where marks > 75 order by SUBSTR(name, LENGTH(name) - 2, 3), id;