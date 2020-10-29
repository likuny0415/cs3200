#Question 1
#a
SELECT * FROM developers;

#b
SELECT * FROM developers 
WHERE developers.id = 34; 

#c
SELECT developer_id from website_roles 
WHERE website_roles.website_id = 234 AND role != 'owner';

#d
#e

#Question2
#a

#b
SELECT name FROM websites
WHERE id = 678;

#c
SELECT website_id FROM website_roles
WHERE role = 'reviewer' AND developer_id = 23;

#d
SELECT website_id FROM website_roles
WHERE role = 'owner' AND developer_id = 12;

#e
SELECT website_id FROM website_roles
JOIN websites ON websites.id = website_roles.website_id
WHERE website_roles.role = 'admin' AND website_roles.developer_id = 34 AND websites.visits > 6000000; 

#Question3
#a

#b
SELECT title FROM pages 
WHERE id = 234;

#c
SELECT page_id FROM page_roles
WHERE role = 'editor' AND developer_id = 12; 

#d
SELECT SUM(views) as 'Total Views' FROM pages 
WHERE website_id = 567; 

#e
SELECT AVG(views) as 'Average Views' FROM pages
WHERE website_id = 3;

#Question4
#a
SELECT * FROM widgets
WHERE page_id = 123;

#b
SELECT * FROM widgets 
WHERE dtype = 'Youtube'; 

#c
SELECT page_id FROM page_roles
JOIN widgets ON widgets.page_id = page_roles.page_id
WHERE page_roles.role = 'reviewer' AND page_roles.developer_id = 12 AND widgets.dtype= 'image';
        
#d
SELECT COUNT(page_id) FROM widgets
WHERE page_id = 345; 

#Question5
#a
SELECT website_id FROM website_privileges 
WHERE privileges = 'delete' AND developer_id = '23';

#b
SELECT website_id FROM website_privileges 
WHERE privileges = 'create' AND developer_id = '34'; 
