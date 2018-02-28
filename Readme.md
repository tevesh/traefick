### What is this?

Traefik is a HTTP **reverse proxy** and **load balancer** that permit to have different docker container that using same port at the same time.

### How to start using for project?

- First of all clone this repository with command `git clone https://gitlab.fullsix.it/orchestra/traefik.git`

- Once the project is downloaded you have to build the image with `docker-compose build` from within the traefik directory

- To start the container use the command `docker-compose up -d` from within the traefik directory

- To stop the container use the command `docker-compose down` from within the traefik directory

### How this work?

**In short: There are a lot of magic in this universe!**

Every project that have to run with this proxy/balancer must have this network in its stack into docker-composer.yml file:
```
networks:
  webnetwork:
    external:
      name: traefik_webgateway
```

After that you have to insert the following lines **inside each service** you will define inside your docker-compose.yml
```
networks:
  - webnetwork
```
You will find that the network `webgateway` is right inside the docker-compose.yml of traefik...and thats all