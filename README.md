# docker-draw.io

About
-----
[draw.io](https://www.draw.io) is an online diagramming web site that delivers the source in [github:jgraph/draw.io](https://github.com/jgraph/draw.io.git).

This docker image is base on httpd:alpine to make minimize image.

Docker
------
```
docker pull leejoneshane/draw.io
docker run -p 8080:80 -d leejoneshane/draw.io
```
Go to: http://localhost:8080/?https=0
Then enjoy.
