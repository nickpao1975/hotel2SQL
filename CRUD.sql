
-- Update from "Large Pool" to "Very Large Pool"
UPDATE pools
SET name = "Very large pool"
WHERE poolid = 2;
SELECT *  from pools;

-- DELETE pool "Pool to be deleted"
DELETE from pools
where name = "Pool to be deleted";

select * from pools;

USE hotel;
SELECT rooms.floor, guests.name
FROM rooms JOIN guests
ON rooms.number = guests.idguests;
