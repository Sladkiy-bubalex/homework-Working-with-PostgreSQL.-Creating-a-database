create database office

CREATE TABLE IF NOT EXISTS Department (
	id SERIAL PRIMARY KEY,
	department_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Boss (
	id SERIAL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES Employee(id),
	subordinates TEXT
);

CREATE TABLE IF NOT EXISTS DepartmentBoss (
	id SERIAL PRIMARY KEY,
	deparment_id INTEGER NOT NULL REFERENCES Department(id),
	boss_id INTEGER NOT NULL REFERENCES Boss(id)
);

CREATE TABLE IF NOT EXISTS Employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	deparment_id INTEGER NOT NULL REFERENCES Department(id),
	boss_id INTEGER NOT NULL REFERENCES Boss(id)
);