## Docker
alias dk="docker"
alias dkps="docker ps"
alias dki="docker inspect"
alias dkr="docker restart"
alias dkl="docker logs --tail=200 -f"
alias dkc="docker-compose"
alias dkcl="docker-compose logs --tail=200 -f"
alias dkcr="docker-compose restart"
alias dkm="docker-machine"
function dkb() { docker exec -it $1 script -q -c "TERM=xterm /bin/bash" /dev/null; }
function dkrb() { docker run --rm -it -v /tmp:/tmp/host ${1:-"ubuntu:18.04"} script -q -c "TERM=xterm /bin/bash" /dev/null; }
function dkjl() { journalctl -b CONTAINER_NAME=$1 -e ${@:2}; }
function dkip() { docker inspect $1 | jq -r .[0].NetworkSettings.IPAddress; }
function docker-clean() {
  docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
  docker volume rm $(docker volume ls -qf dangling=true 2>/dev/null) 2>/dev/null
}