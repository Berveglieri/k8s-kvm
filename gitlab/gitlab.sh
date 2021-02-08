NAME="gitlab"

start()
{
docker run --detach \
  --hostname gitlab.andorra.tl \
  --name $NAME \
  --network andorra \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
}

stop()
{
  docker stop $NAME && docker rm $NAME
}

$1
