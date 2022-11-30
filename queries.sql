-- write your queries here

-- 1

SELECT * FROM owners LEFT JOIN vehicles ON owners.id=vehicles.owner_id;

-- 2

SELECT first_name,last_name,COUNT(*) AS count FROM owners JOIN vehicles ON owners.id=vehicles.owner_id GROUP BY first_name,last_name ORDER BY count;

-- 3

SELECT first_name,last_name,ROUND(AVG(price)) AS average_price,COUNT(*) AS count FROM owners
JOIN vehicles ON vehicles.owner_id=owners.id
GROUP BY first_name,last_name HAVING count(*)>1 AND AVG(price)>10000 ORDER BY first_name DESC;

