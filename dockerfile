FROM quay.io/wildfly/wildfly:latest

# Copy .war file ke direktori deployments WildFly
COPY target/simple-web-app.war /opt/jboss/wildfly/standalone/deployments/

EXPOSE 8090

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
