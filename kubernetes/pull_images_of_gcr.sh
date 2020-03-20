#!/bin/bash
docker_hub_name="hgfkeep"
image=$1
if [ -z $image ]; then
  echo "please input image full name, example hgfkeep/rust-jupyter:latest"
  exit
fi


docker pull $image
last=${image##*/}
prefix=${image%/*}
echo " $image : prefix=$prefix, last=$last"
docker tag $image $docker_hub_name/$last
docker push $docker_hub_name/$last

echo "recover origin tag and name\n"
echo "\n==================================\n"
echo "docker pull $docker_hub_name/$last\ndocker tag $docker_hub_name/$last $image"
 
