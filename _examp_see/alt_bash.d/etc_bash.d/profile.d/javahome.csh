if ( -e /usr/lib/jvm/java ) then
setenv JAVA_HOME /usr/lib/jvm/java
else if ( -e /usr/lib/jvm/jre ) then
setenv JAVA_HOME /usr/lib/jvm/jre
endif
