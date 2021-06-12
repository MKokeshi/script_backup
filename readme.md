# script_backup
 A script for backup MySQL Databases
---
You just need to set several variables in the script in order \
to start using it and clone the script into your root directory in which the project is stored.
Example:
> ROOT_PASSWORD="super_secret_root_password" \
DB_NAME="my_project_database_name"

Take care of the name of the database container, \
it should include the keyword “db”, for example, \
my project root directory with the name “web_project”, so if I use “docker-compose” for my project, \
the service in it should be called “db” ", in this case, Docker will create a container named" web_project_db "
After you can run script with command: `setsid ./backup_script.sh`