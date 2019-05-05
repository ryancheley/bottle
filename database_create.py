import sqlite3
conn = sqlite3.connect('pod.db') # Warning: This file is created in the current directory
conn.execute("CREATE TABLE contact (id INTEGER PRIMARY KEY, first_name varchar(30) NOT NULL, last_name varchar(150) NOT NULL, email varchar(254) NOT NULL)")
conn.execute("CREATE TABLE sites (id INTEGER PRIMARY KEY, url varchar(255) NOT NULL, description varchar(255) NOT NULL)")
conn.commit()
