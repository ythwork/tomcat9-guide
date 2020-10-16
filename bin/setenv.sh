JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.http=9080"
JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.https=9443"
JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.ajp=9009"
JAVA_OPTS="$JAVA_OPTS -Dtomcat.port.shutdown=9005"

CATALINA_OPTS="$CATALINA_OPTS -Djava.rmi.server.hostname=<hostname>"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.port=9002"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.rmi.port=9002"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.ssl=false"
CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote.authenticate=false"

# heap
# options
# 메모리 설정 : -Xms(초기값), -Xmx(최대값)
# new generation과 old generation의 비율: -XX:NewRatio
# new generation 내 Eden, Survivor 비율 : -XX:SurvivorRatio

# new generation : Eden, Survivor 1, Survivor 2 생긴지 얼마 안된 객체
# old generation : 오랜 시간 살아남은 객체

# gc param
CATALINA_OPTS="$CATALINA_OPTS -Xloggc:$CATALINA_BASE/logs/gc.log -XX:+PrintGCDetails"
# 절대시간 기준
CATALINA_OPTS="$CATALINA_OPTS -XX:+PrintGCDateStamps"

