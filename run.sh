result=${PWD##*/}
res=${PWD}
docker kill $result
docker rm $result
docker run -d -p 8000:8000  \
    --name $result \
    -v $res:/var/www/html \
cadotinfo/docker-php7.4-apache-yarn-composer-symfony5
