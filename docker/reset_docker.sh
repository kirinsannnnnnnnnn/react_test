docker container list --all | \
  awk '{print $1}' | \
  while read f; do \
    echo $f; \
    docker container stop $f; \
    docker container rm $f; \
  done
docker container list --all
docker system prune
docker image list --all