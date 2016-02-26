#!/usr/bin/env bash

java -jar zipkin-web-1.33.2-all.jar  -zipkin.web.port=:9412 -zipkin.web.rootUrl=/ -zipkin.web.query.dest=localhost:9411



#  Below are environment variables definitions.

#   `SCRIBE_HOST`: Listen host for scribe, where traces will be sent
#  `SCRIBE_PORT`: Listen port for scribe, where traces will be sent
#   `WEB_LOG_LEVEL`: Log level written to the console; Defaults to INFO


#   val webServerPort = flag("zipkin.web.port", new InetSocketAddress(8080), "Listening port for the zipkin web frontend")
#   val webRootUrl = flag("zipkin.web.rootUrl", "http://localhost:8080/", "Url where the service is located")
#   val queryDest = flag("zipkin.web.query.dest", "127.0.0.1:9411", "Location of the query server")
#   val queryLimit = flag("zipkin.web.query.limit", 10, "Default query limit for trace results")
#   val environment = flag("zipkin.web.environmentName", "", "The name of the environment Zipkin is running in")
#   val logLevel = sys.env.get("WEB_LOG_LEVEL").getOrElse("INFO")