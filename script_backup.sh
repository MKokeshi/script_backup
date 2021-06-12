ROOT_PASSWORD=SOME_STRONG_PASSWORD # USE ROOT PASSWORD HERE
DB_NAME=SOME_DATABASE

dirname=$(pwd)
result="${dirname%"${dirname##*[!/]}"}"
result="${result##*/}"   
container=$(docker ps -a | grep "${result}_db" | awk '{print $1}')

while [ true ]
do
    docker exec ${container} /usr/bin/mysqldump -u root --password=${ROOT_PASSWORD} ${DB_NAME} > "backup_$(openssl rand -hex 12).sql"
    sleep 8h
done