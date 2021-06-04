FROM jetty:9.4-jre11-slim
COPY target/bookstore.war /var/lib/jetty/webapps/ROOT.war