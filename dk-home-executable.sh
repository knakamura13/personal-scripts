cd ~/Desktop/apu-home-services;
docker kill $(docker ps -q)&>/dev/null;
docker build . -t home-services;
docker run -d -p 80:80 --rm --name=home-services --mount "type=bind,source=$(pwd),target=/var/www/html/apu-home-services" home-services;
open "http://localhost:80/services";

# Run interactively
#docker exec -it home-services zsh;
