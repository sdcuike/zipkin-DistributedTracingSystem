#!/usr/bin/env bash

java  -DMYSQL_DB=zipkin  -DMYSQL_HOST=127.0.0.1 -DMYSQL_USER=cui -DMYSQL_PASS=cui -DSTORAGE_TYPE=mysql -jar zipkin-server-0.5.3-exec.jar -f /collector-mysql.scala



#  zipkin-server is a drop-in replacement for the scala query service.

#  The following environment variables from zipkin-scala are honored.

#  * `QUERY_PORT`: Listen lookback for the query http api; Defaults to 9411
#  * `QUERY_LOG_LEVEL`: Log level written to the console; Defaults to INFO
#  * `QUERY_LOOKBACK`: How many milliseconds queries look back from endTs; Defaults to 7 days
#  * `STORAGE_TYPE`: SpanStore implementation: one of `mem` or `mysql`
#  * `COLLECTOR_SAMPLE_RATE`: Percentage of traces to retain, defaults to always sample (1.0).
#  MySQL

#  The following apply when STORAGE_TYPE is set to mysql:

#  * `MYSQL_DB`: The database to use. Defaults to "zipkin".
#  * `MYSQL_USER` and `MYSQL_PASS`: MySQL authentication, which defaults to empty string.
#  * `MYSQL_HOST`: Defaults to localhost
#  * `MYSQL_TCP_PORT`: Defaults to 3306
#  * `MYSQL_MAX_CONNECTIONS`: Maximum concurrent connections, defaults to 10
#  * `MYSQL_USE_SSL`: Requires `javax.net.ssl.trustStore` and `javax.net.ssl.trustStorePassword`, defaults to false.
#  Example usage:

#  $ STORAGE_TYPE=mysql MYSQL_USER=root ./mvnw -pl zipkin-server spring-boot:run

