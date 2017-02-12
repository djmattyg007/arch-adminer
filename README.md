**Application**

[adminer](https://www.adminer.org/)

**Description**

Adminer (formerly phpMinAdmin) is a database management tool written in PHP. It can be deployed as a single file, requires no configuration out of the box, and supports several different databases.

**Build notes**

Runs a custom build of adminer found at the following URL:

https://github.com/djmattyg007/adminer

The build running inside this image supports MySQL, SQLite and PostgreSQL. It is built using the builder image, which you can find at the following URL:

https://hub.docker.com/r/djmattyg007/adminer-build

**Usage**
```
docker run -d \
    --net="host" \
    --rm=true \
    --name=<container name> \
    -v /etc/localtime:/etc/localtime:ro \
    -e TZ=<your timezone> \
    djmattyg007/arch-adminer
```

Please replace all user variables in the above command defined by <> with the correct values.
Specifying the TZ environment variable is optional. UTC will be used if it is not specified.

**Access application**

Connect to php-fpm using its TCP socket on `<host ip>:9000`

**Example**
```
docker run -d \
    --net="host" \
    --rm=true \
    --name=adminer \
    -v /etc/localtime:/etc/localtime:ro \
    -e TZ=Australia/Melbourne \
    djmattyg007/arch-adminer
```
