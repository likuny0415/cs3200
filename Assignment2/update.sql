#1
UPDATE phones
SET phones.phone = '333-444-5555'
WHERE `primary` = 1 AND person_id = 34;

#2
UPDATE widgets 
SET widgets.order = 3 
WHERE name = 'head345'; 

UPDATE widgets 
SET widgets.order = 1 
WHERE name = 'image345';

#3
UPDATE pages 
SET pages.title = CONCAT('CNET = ', title) 
WHERE pages.website_id = 567; 

#4
UPDATE website_roles
SET website_roles.role = 'owner' 
WHERE website_roles.developer_id = 34 AND website_roles.website_id = 567; 

UPDATE website_roles
SET website_roles.role = 'editor' 
WHERE website_roles.developer_id = 23 AND website_roles.website_id = 567; 