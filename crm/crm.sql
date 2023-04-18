-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS industry_memberships;

-- CREATE TABLES

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  address TEXT,
  phone_number INTEGER,
  company_id INTEGER
);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company TEXT
);

CREATE TABLE salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    notes TEXT,
    created_at TEXT,
    activity_id INTEGER
    salesperson_id INTEGER
);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE industry_memberships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    industry_id INTEGER
);