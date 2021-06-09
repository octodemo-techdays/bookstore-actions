# GitHub Demo Bookstore

A Java based Servlet implementation of a bookstore.

This is a legacy type application that will create a WAR file for deployment to Web Server that supports servlets, e.g. Jetty or Tomcat

## Maven Project
The project will build a WAR file using Maven. Changes made from the legacy project:

* POM now uses a dynamic and configurable version number `${revision}${changelist}${sha1}` these options give us three injection points to provide a unique tracible version number for each build
  * By default the version number will be `1.0.0-SNAPSHOT` when developers build locally using `${revision}` as the placeholder for the SemVer and `${sha1}` being set to `-SNAPSHOT` to indicate an integration build
  * The CI/CD workflows will inject the necessary parameters into these value to create unique trackable build numbers

## Dockerfile
We are using a Dockerfile to build a container that is capable of serving up our WAR file. To do this we are utilizing a Jetty base image and serving our WAR file from the `/` context.
