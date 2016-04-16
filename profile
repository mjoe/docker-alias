# $Id:$
# ------------------------------------
# Docker alias and function
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop all containers
alias dstop='docker stop $(docker ps -a -q)'

# Remove all containers
alias drm='docker rm $(docker ps -a -q)'

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
alias dri='docker rmi $(docker images -q)'

# Remove all images with force switch
alias drif='docker rmi -f $(docker images -q)'

# Docker build function alias
alias dbu='docker_build $@'

# Docker alias function alias
alias dalias='docker_alias $@'

# Docker alias update function alias
alias daup='docker_alias_update $@'

# Dockerfile build, e.g., $dbu mjoe/test
docker_build() { docker build -t $1 .; }

# Show all alias related docker
docker_alias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Update local docker-alias repo
docker_alias_update() { source ~/.da_home && cd $DA_HOME/docker-alias && git pull; }
