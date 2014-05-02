mysql
=====

Docker MySQL base image.


BUILD
=====

docker build --rm -t mysql .


RUN
===

docker run -d -p 3306:3306 mysql
