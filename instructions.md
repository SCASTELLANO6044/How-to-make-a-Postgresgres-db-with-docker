### YouTube video

Execute these commands to build the docker image and run the docker container in the same directory as the dockerfile.

```docker
docker build -t yt-video ./
```

```docker
docker run --name yt-video -p 5434:5432 yt-video
```

Command to connect through a cli.

```terminal
psql -h 127.0.0.1 -U yt-video -d yt-video -p 5434;
```