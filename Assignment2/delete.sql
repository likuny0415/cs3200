#1
DELETE FROM addresses
WHERE `primary` = 1 AND person_id = 12;

#2
DELETE FROM widgets 
WHERE `order` = 3 AND page_id = 345; 

#3
 DELETE FROM pages
WHERE website_id=(SELECT id FROM websites WHERE `name`='Wikipedia') 
AND updatedDate=(SELECT max_updated FROM (SELECT max(updatedDate) AS max_updated FROM pages) AS p);

#4
SET SQL_SAFE_UPDATES = 0;

DELETE FROM pages
WHERE website_id = (SELECT id FROM websites where `name`='cnet');
    
DELETE FROM websites
WHERE `name` = 'CNET';