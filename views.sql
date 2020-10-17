CREATE VIEW `developer_role_and_privileges2` AS
SELECT p.firstName, p.lastName, p.username, p.email, w_role.role, w.name, w.updated,w.visits, w_priv.privileges, pages.title, pages.views, pages.updatedDate, p_priv.privilege FROM persons p 
JOIN developers d ON d.id = p.id
JOIN website_roles w_role ON w_role.developer_id = p.id
JOIN websites w ON w_role.website_id = w.id
JOIN website_privileges w_priv ON w_priv.developer_id = w_role.developer_id AND w_priv.website_id = w_role.website_id
JOIN pages ON pages.website_id = w.id
JOIN page_roles p_role ON p_role.developer_id = p.id AND p_role.page_id = pages.id
JOIN page_privileges p_priv ON p_priv.developer_id = p_role.developer_id AND p_priv.page_id = p_role.page_id;
