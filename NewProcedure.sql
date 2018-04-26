CREATE PROCEDURE `updatequeue`(in id int)
BEGIN
	insert into queue(queue_id,time) values(id,now());
END
