#!/usr/bin/env bash

java  -DMYSQL_DB=zipkin  -DMYSQL_HOST=127.0.0.1 -DMYSQL_USER=cui -DMYSQL_PASS=cui  -jar zipkin-collector-service-1.33.2-all.jar -f /collector-mysql.scala



# -f is scala configuration, and can be a local filesystem path or one of the bundled configurations below.

# /collector-dev.scala - file-based SQL backend
# /collector-cassandra.scala - localhost cassandra backend
# /collector-mysql.scala - MySQL backend



#  MySQL backend
#    sys.env.get("MYSQL_DB").getOrElse("zipkin"),
#    sys.env.get("MYSQL_HOST").getOrElse("localhost"),
#    sys.env.get("MYSQL_TCP_PORT").map(_.toInt),
#    sys.env.get("MYSQL_USER").getOrElse(""),
#    sys.env.get("MYSQL_PASS").getOrElse(""),
#    sys.env.get("MYSQL_USE_SSL").map(_.toBoolean).getOrElse(false)

#  Below are environment variables definitions.

#  * `COLLECTOR_PORT`: Listen port for the thrift scribe and dependency apis; Defaults to 9410
#  * `COLLECTOR_ADMIN_PORT`: Listen port for the ostrich admin http server; Defaults to 9900
#  * `COLLECTOR_LOG_LEVEL`: Log level written to the console; Defaults to INFO
#  * `COLLECTOR_SAMPLE_RATE`: Percentage of traces to retain, defaults to always sample (1.0).


