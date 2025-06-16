# using wildfly
#FROM quay.io/wildfly/wildfly:latest

# Copy .war file ke direktori deployments WildFly
#COPY target/simple-web-app.war /opt/jboss/wildfly/standalone/deployments/

#EXPOSE 8080

#CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]


#==================================================================================================================================================================================

#using jboss
FROM registry.redhat.io/jboss-eap-8/eap80-openjdk17-openshift-rhel9

# Direktori default deployment
ENV DEPLOY_DIR=/opt/eap/standalone/deployments/

# Salin file WAR ke direktori deployment
COPY target/simple-web-app.war ${DEPLOY_DIR}

# Buat marker file untuk auto-deploy
RUN touch ${DEPLOY_DIR}/simple-web-app.war.dodeploy

# expose port yang digunakan oleh aplikasi
EXPOSE 8080 9990

# run jboss EAP server standalone mode
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]