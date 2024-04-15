#! /bin/bash

# kill the old container process - stopped & then removed
docker stop apacheproj
docker remove apacheproj
# pull fresh image
docker pull isolat3d/apacheimageproj4:latest
# run new container by name, with restart
docker run -d -p 80:80 --name apacheproj --restart always isolat3d/apacheimageproj4:latest
