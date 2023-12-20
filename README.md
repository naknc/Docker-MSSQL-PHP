# Docker Project with MSSQL and PHP
In this project I created a docker compose file with two containers. One is MSSQL and other is a PHP api. 

## How to run?
Running the `./launcher.sh` should be sufficient. Make sure the file is executable with `chmod +x launcher.sh`(or use `bash launcher.sh`). Because of the issue with MSSQL container, project does not run on MacOS (or any arm based processor). Use VMs if you have to use a Mac.

## How does it work?
PHP project contains sqlsrv and mssql drivers to conect to database. MSSQL itself is configured with some hardcoded password (Un!q@to2023).  

Running `docker compose up` is sufficient but I needed to connect some other database name. So in the `./launcher.sh`, at first I start the database and execute into it and run sqlcmd command to create database. This command uses create-db.sql file which creates the db_vero_digital database. 

sqlcmd command is installed in docker container itself, so you don't need to install it locally. 

