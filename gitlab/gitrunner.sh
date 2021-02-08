NAME="gitlab-runner"
REGISTRATION_TOKEN="bS5-anGdf1fFFquBo6Q5"

function start() {
docker run --detach \
  --hostname gitlab-runner.andorra.tl \
  --name $NAME \
  --network andorra \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab-runner \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:latest
}

function register() {
  docker run -it --rm \
    --hostname gitrunner.andorra.tl \
    --name ${NAME} \
    --network andorra \
    --volume $GITLAB_HOME/config:/etc/gitlab-runner \
    gitlab/gitlab-runner:latest register \
    --non-interactive \
    --url "http://gitlab" \
    --registration-token "${REGISTRATION_TOKEN}" \
    --executor "docker" \
    --docker-image "debian:stretch" \
    --description "gitlab-runner" \
    --tag-list "docker,runner01" \
    --run-untagged="true" \
    --locked="false" \
    --access-level="not_protected"
}

function stop() {
  docker stop $NAME && docker rm $NAME
}

$1