if test -e /usr/lib/jvm/java; then
    JAVA_HOME=/usr/lib/jvm/java
    export JAVA_HOME
elif test -e /usr/lib/jvm/jre; then
    JAVA_HOME=/usr/lib/jvm/jre
    export JAVA_HOME
fi
