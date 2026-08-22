1. CREATE DATABASE <database_name>;
2. SHOW DATABASE;
3. CONNECT <database_name>;
4. CREATE TABLE <table_name_in_plural>(
5. INSERT INTO <table_name_in_plural>
        (columns) VALUES
        (values);

)

#Utility Commands
\!w c1smys
mysql -u root -p --databases <table_name_in_plural > <date_dbname.sql>
mysqldump -u root -p --databases library_db >C:\Users\User\Documents\IT30B\IT30B\Backups\0818206_library_db.sql