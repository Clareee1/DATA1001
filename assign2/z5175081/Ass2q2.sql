Q1
SELECT
  COUNT(DISTINCT rooms.id)
FROM
  buildings,
  rooms
WHERE
  rooms.building = buildings.id AND buildings.name = 'Computer Science Building' AND capacity >= 20;
  
  
Q2
SELECT
  staff.id as id,phone as phone
FROM
  rooms,
  staff,
  buildings
WHERE
  rooms.id = staff.office AND rooms.building = buildings.id AND buildings.name = 'Biological Sciences Building';
  
  
  
Q3
SELECT
  buildings.id as id,buildings.name as name, count(distinct rooms.id)
FROM
  rooms,
  staff,
  buildings
WHERE
  rooms.id = staff.office AND rooms.building = buildings.id
GROUP BY 
  buildings.id
HAVING
  count(distinct rooms.id) > 0;
  
Q4
SELECT
  rooms.name
FROM
  rooms
WHERE
  rooms.capacity >
(select AVG(capacity) FROM rooms);
