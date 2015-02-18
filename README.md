# transac-docker

docker image for redpelicans/transac server


transac  is a special [Docker](https://www.docker.com) image that is configured for correct use within Docker containers. It is mainly made of node.js plus [transacd](https://github.com/redpelicans/transacd.git).



transac image is available for pulling from [the Docker registry](https://registry.hub.docker.com/u/redpelicans/transac/)!

### Usage ###

To use it in foreground mode:

````
  # docker run -it --rm --name transac  --link mongo:mongo -p 8001:80 redpelicans/transac
  ## or, to visit it
  # docker run -it --rm --name transac  --link mongo:mongo -p 8001:80 redpelicans/transac /bin/bash
````

To use it in background mode:

````
  # docker run -d --restart=always --name transac --link transac:transac --link mongo:mongo -p 8001:80 redpelicans/transac
````

It only depends on a mongo container.

Launch your browser on http://<IP>:8001 and consult your transacs.


To publish new transac, see the client API [transac](https://github.com/redpelicans/transac.git)
