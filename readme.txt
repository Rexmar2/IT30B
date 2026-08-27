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






mysqldump -u root -p --databases library_db > "C:\xampp\htdocs\IT30B\backups\%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%_library_db.sql"

