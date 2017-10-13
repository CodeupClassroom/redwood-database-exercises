# The left table is the one it's called from the keyword FROM

# Inner joins

# Request: Give me all the users with roles.

SELECT u.name, u.email, r.name
FROM users AS u
  JOIN roles AS r ON u.role_id = r.id;

# Left joins

# Request: Give me all the users available.

SELECT u.name, u.email, IF(r.name is null, 'unassigned', r.name)
FROM users AS u
  LEFT JOIN roles AS r ON u.role_id = r.id;


# Right joins

# Request: Give me all the roles available.

SELECT u.name, u.email, r.name
FROM users AS u
  RIGHT JOIN roles AS r ON u.role_id = r.id;