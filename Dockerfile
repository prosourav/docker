
FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json .
RUN npm install
# RUN npm ci
COPY . .
EXPOSE 8000
CMD [ "npm","run","dev" ]


# to build an image
# -> docker image build -t {image-name}:{version} .

# to see all the images
# -> docker image ls

# to make a container of an image
# -> docker container run {image-name}
# -> docker container run -d -p {local-port}:{docker-port} --name {containername(name what you waant to give)} {image-name}

# to see all the containers
# -> docker container ls -a

# to see all the containers
# -> docker container ls

# to start and existing container
# -> docker container start {container-id / name}

# to enter in a running container 
# -> docker exec -it {container-id} sh
# now to exit the container 
# -> exit

# to stop a container it will be stopped in 10s
# -> docker container stop {container-id / name}
# to immediately stop the container
# -> docker container kill {container-id / name}

# to create a conntainer with a custom name 
# -> docker container run -d --name {containername(name what you waant to give)} {image-name}

# to see logs of a container
# -> docker logs {container-name}
# to see specific line of logs of a container
# -> docker logs {container-name} -n {number of line}
# to see live logs of a container
# ->  docker logs -f {container-id/name} (Recommended)
# or try this
# docker exec -it <container_id_or_name> /bin/bash

# to remove / delete all stopped containers
# -> docker container prune

# to remove dangling images
# -> make sure it not used by any container then stop and delete it
# -> docker image prune

# to remove all image and container
# docker system prune
# if you want to remove all active containers and images
# docker system prune -a

# to push an image to docker hub
# -> docker login
# -> docker push {user/name}/{image-name}:{version}

# to pull an image from dockerHub
# -> docker pull {image}:latest/{version}



# REF: https://www.youtube.com/watch?v=StXoFPs7Cok&t=2118s
