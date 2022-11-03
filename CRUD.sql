
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


/* a Transaction is an entity – generally a group of SQL statements, or a combination of 
statements and stored procedure calls, which should be 
executed all or none. With transactions operations we can commit changes/updates to a database or rollback to previous
state.*/

START transaction;
insert INTO guests (idguests, name, rooms_number)
values (5, "Petros Papadopoulos Ioannou", 4);
commit;

SELECT * FROM hotel.guests;

START transaction;
insert INTO guests (idguests, name, rooms_number)
values (5, "Petros Papadopoulos Ioannou", 4);
rollback;

START transaction;
insert INTO guests (idguests, name, rooms_number)
values (6, "test test", 5);
commit;

SELECT * FROM hotel.guests;

START transaction;
insert INTO guests (idguests, name, rooms_number)
values (6, "test test", 5);
rollback;

START transaction;
insert INTO guests (idguests, name, rooms_number)
values (7, "test test", 5);
SELECT * FROM hotel.guests;
commit;
