#!/usr/bin/env bash

java -DMYSQL_DB=zipkin -DMYSQL_HOST="127.0.0.1"  -DMYSQL_USER="cui"  -DMYSQL_PASS=cui  -jar zipkin-query-service-1.33.2-all.jar    -f ./query-mysql.scala 



#  Below are environment variables definitions.
# `QUERY_PORT`: Listen port for the query http api; Defaults to 9411
# `QUERY_ADMIN_PORT`: Listen port for the ostrich admin http server; Defaults to 9901
# `QUERY_LOG_LEVEL`: Log level written to the console; Defaults to INFO
# `QUERY_LOOKBACK`: How many milliseconds queries look back from endTs; Defaults to 7 days
# `SCRIBE_HOST`: Listen host for scribe, where traces will be sent
#`SCRIBE_PORT`: Listen port for scribe, where traces will be sent



#  -f is scala configuration, and can be a local filesystem path or one of the bundled configurations below.
#  /query-dev.scala - file-based SQL backend
#  /query-cassandra.scala - localhost cassandra backend
#  /query-mysql.scala - MySQL backend

#  MySQL
#     sys.env.get("MYSQL_DB").getOrElse("zipkin"),
#     sys.env.get("MYSQL_HOST").getOrElse("localhost"),
#     sys.env.get("MYSQL_TCP_PORT").map(_.toInt),
#     sys.env.get("MYSQL_USER").getOrElse(""),
#     sys.env.get("MYSQL_PASS").getOrElse(""),
#     sys.env.get("MYSQL_USE_SSL").map(_.toBoolean).getOrElse(false)