NAME="andorra-registry"

start()
{
sudo docker run --detach \
  --hostname registry.andorra.tl \
  --publish 4000:5000 \
  --name $NAME \
  --network andorra \
  --restart always \
  -v registry:/var/lib/registry \
  registry:2
}

stop()
{
  docker stop $NAME && docker rm $NAME
}

$1