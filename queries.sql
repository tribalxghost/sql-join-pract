-- write your queries here

SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;
SELECT o.first_name,o.last_name,COUNT(v.owner_id) FROM owners o JOIN vehicles v
ON o.id = v.owner_id GROUP BY o.first_name,o.last_name
ORDER BY o.first_name ASC;

SELECT o.first_name,o.last_name,AVG(v.price),COUNT(v.owner_id)
FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.first_name,
o.last_name HAVING AVG(v.price) > 10000 ORDER BY o.first_name DESC;
