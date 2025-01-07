# [Santa is missing!](https://adventofsql.com/challenges/15)

## Description
The North Pole was in chaos. Santa hadn't been seen since December 26th when his GPS tracker showed him landing at O'Malley's Bar in Manhattan. Mrs. Claus was beside herself with worry, and the elves were frantically checking their location devices.

"Look!" squeaked Tinker the elf, pointing at the blinking monitor. "His last coordinates are 40.7589° N, 73.9851° W - but what does that mean?"

Your job is to help locate him.

## Challenge
[Download Challenge data](https://github.com/thatlaconic/advent-of-sql-day-15/blob/main/advent_of_sql_day_15.sql)

Using the list of areas you need to find which city the last sleigh_location is located in.

Submit the city name only.

## Dataset
This dataset contains 2 tables. 
### Using PostgreSQL
**input**
```sql
SELECT *
FROM sleigh_locations ;
```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-15/blob/main/sleigh_loc.PNG)

**input**
```sql
SELECT *
FROM areas ;
```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-15/blob/main/areas.PNG)

### Solution
[Download Solution Code](https://github.com/thatlaconic/advent-of-sql-day-15/blob/main/advent_answer_day15.sql)

**input**
```sql
SELECT timestamp, place_name, coordinate AS location
FROM sleigh_locations
JOIN areas ON ST_contains(ST_AsText(polygon)::geometry,ST_AsText(coordinate)::geometry);

```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-15/blob/main/d15.PNG)

