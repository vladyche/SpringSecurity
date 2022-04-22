DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id serial PRIMARY KEY,
    username VARCHAR (32),
    password VARCHAR (255),
    role_id INTEGER,

    CONSTRAINT fk_roles
        FOREIGN KEY (role_id)
        REFERENCES roles(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);

CREATE TABLE roles (
    id serial PRIMARY KEY,
    name VARCHAR (16)
);

-- password 123
INSERT INTO users(id, username, password, role_id) VALUES (1, 'Name1', '$2y$10$ASUWb9KGHYWPebZgmQljAu9x6KiNvOUXh4Rk5gT9.qalVWoLdBnFC', 1);

-- password 321
INSERT INTO users(id, username, password, role_id) VALUES (2, 'Name2', '$2y$10$0f/zxqKSHfWM/0dJcPvQ0.AUdyuXyz3j5PNLdk5/Q.L8UrcPvp3eC', 2);

INSERT INTO roles(id, name) VALUES (1, 'ADMIN');
INSERT INTO roles(id, name) VALUES (2, 'USER');

SELECT * FROM users WHERE id = 1;
SELECT * FROM roles WHERE id = 1;

SELECT username, password FROM users WHERE username = 'Name1';
SELECT u.username, r.name FROM users u INNER JOIN roles r ON u.role_id = r.id WHERE u.username = 'Name1';