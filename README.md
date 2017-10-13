# Notes on SQL

## Relationships

There are 3 types of relationships

* 1 to 1
* 1 to many
* many to many

### Some examples

#### 1 to 1

A Github repository has only one group of settings

```
repositories -> id, name
settings -> id, is_private, has_wiki, has_issues, repository_id (FK)
```

In this case the owning side is `repositories`, it has the primary key, `settings` has the 
foreign key (`repository_id`).

#### 1 to many  

1 author has many quotes

```
quotes -> id, content, author_id (FK)
authors -> id, first_name, last_name
```
In this case the owning side is `authors`, it has the primary key, `quotes` has the 
foreign key (`author_id`).

#### Many to many 

A Github user can contribute to many repositories and a repository can have many contributors

```
repositories -> id, name, url

(3rd table -> pivot table) 
users_repositories -> repository_id (FK), user_id (FK)

users -> id, username, password
```

Suppose we have the following data

```
users
id, username
1, luis
2, fer
repositories
id, url
1, redwood-java
2, redwood-mysql
```

`luis` contributes to `redwood-java` and `redwood-mysql`.
The contributors to `redwood-java` are `fer` and `luis`. This is represented as follows
in the pivot table

```
# contributors (users_repositories)
# repository_id | user_id
# 1, 1
# 2, 1
# 1, 2
```
