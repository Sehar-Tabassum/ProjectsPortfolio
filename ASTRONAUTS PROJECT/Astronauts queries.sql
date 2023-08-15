SELECT COUNT(*) AS Total_Values
FROM astronauts;
--2. Space Flights and Space Walks AVG Values
SELECT AVG(Space_Flights) AS Avg_Space_Flights, AVG(Space_Walks) AS Avg_Space_Walks
FROM astronauts;

-- 3.Number of Space_Flights and Space_Walks
SELECT SUM(Space_Flights) AS Total_Space_Flights, SUM(Space_Walks) AS Total_Space_Walks
FROM astronauts;

-- 4. Max Space_Flights and Space_Walks Values
SELECT MAX(Space_Flights) AS Max_Space_Flights, MAX(Space_Walks) AS Max_Space_Walks
FROM astronauts;

--5. Astronaut who has the most number of Space_Flights
SELECT Name, Space_Flights
FROM astronauts WHERE Space_Flights = 7;

--6 Astronauts who has the most number of Space_Walks
SELECT Name, Space_Walks 
FROM astronauts WHERE Space_Walks= (SELECT MAX(Space_Walks) FROM astronauts);

--7. MIN Space_Flight and Space_Walk Values
SELECT MIN(Space_Flights) AS Min_Space_Flights, MIN(Space_Walks) AS Min_Space_Walks
FROM astronauts;

--8. Number of Astronauts with no Space_Flights
SELECT COUNT(Name), Space_Flights

FROM astronauts WHERE Space_Flights = 0;
select * from astronauts

--9. Astronauts with no Space_Walks
SELECT Name, Space_Walks
FROM astronauts WHERE Space_Walks = 0;

--10. Number of Astronauts with no Space_Flights nor Space Walks
SELECT Name AS both_0
FROM astronauts
WHERE Space_Flights = 0 AND Space_Walks = 0;
-----
select count(*) as Total_Astronauts
from astronauts where Space_Flights = 0 and Space_Walks = 0;
-----
/*select name, count(*) as Total_Astronauts
from astronauts
where name in (select name from astronauts where Space_Flights = 0 AND Space_Walks = 0)
GROUP BY Name;*/

SELECT COUNT(name) AS Total_Astronauts
FROM astronauts;

-----
--11. Number of NULL Values in Year
SELECT COUNT(Year)
FROM astronauts
SELECT SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS Total_year_null_Values
FROM astronauts;

--12. Number of NULL Values in Missions
SELECT * FROM astronauts
WHERE Missions IS NULL;
SELECT SUM(CASE WHEN Missions IS NULL THEN 1 ELSE 0 END) AS Total_Missions_Null_Values
FROM astronauts;

--13. Astronauts with no Space_Flight experience in Managment position
select Name, Space_Flights, Status 
from astronauts 
where Status = 'Management' AND Space_Flights = 0;

--14. Number of Astronauts with no Space_Flight Experince in Managment Poistion
SELECT COUNT(*)
FROM astronauts
WHERE Status = 'Management' AND Space_Flights = 0;

