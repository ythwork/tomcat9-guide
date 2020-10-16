JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.http=9080"
JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.https=9443"
JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.ajp=9009"
JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.shutdown=9005"

CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.port=8383"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.ssl=false"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.authenticate=false"

