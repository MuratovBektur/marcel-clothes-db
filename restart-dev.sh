git pull;

# получем имя докер композера 
# (либо docker compose либо docker-compose)
# по которому можно обращяться
source docker-compose-name.sh;


env_path=".env.dev"
dockerfile_path="docker-compose.dev.yml"


"${DOCKER_COMPOSE[@]}" -f $dockerfile_path --env-file $env_path down -v;
"${DOCKER_COMPOSE[@]}" -f $dockerfile_path --env-file $env_path up -d --build;
"${DOCKER_COMPOSE[@]}" -f $dockerfile_path --env-file $env_path logs -f --tail=100;