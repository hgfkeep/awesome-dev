#/bin/bash
registry=$1
if [ -z $registry ]; then
  echo "please input registry address as parameter! like 'core.harbor.domain/example'"
  exit
fi
images=`docker images --format "{{.Repository}}:{{.Tag}}"`
for image in ${images[@]} ; do
  docker tag $image $registry/$image
  docker push $registry/$image
  docker rmi $registry/$image
done
echo -e '\r\n\r\nSuccess!\r\n\r\n'
