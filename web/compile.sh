
#
# Change this to the path of the learning project on your local machine
# this is your local git repository.
#

SRC="/home/yaron/jaaga/learning"


#
# Change this to the tomcat installation on your local machine
#

TOMCAT="/home/yaron/apache-tomcat-8.0.32"


LEARN_SRC=$SRC"/app/src/main/java/in/jaaga/learning"
SERVLET_SRC=$SRC"/web"
SERVLET_LIB="$TOMCAT/lib/servlet-api.jar"
SERVLET_DESTINATION="$TOMCAT/webapps/examples/WEB-INF/classes"

javac -d $SERVLET_DESTINATION -cp $SERVLET_LIB:$SERVLET_SRC/lib/javax.json-api-1.0.jar:$SERVLET_DESTINATION $LEARN_SRC/problems/*.java $LEARN_SRC/missions/*.java $LEARN_SRC/cli/*.java $LEARN_SRC/*.java $SERVLET_SRC/*.java
