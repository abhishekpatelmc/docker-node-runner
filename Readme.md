# Node code runner

- This is a simple nodejs code runner. It can open a interactive teminal from docker container.

## How to use

- Clone the repo

```bash
git clone 

```bash
docker build -t code-runner .
```

- Run the image

```bash
docker run  --name workspace -p 8080:8080 -it code-runner
```

- Open Bash in the container

```bash
cd /bin/bash
```

**Note:** Name of my container is `workspace`. you can use any name you want.

- start docker container

```bash
docker start workspace
```

- stop docker container

```bash
docker stop workspace
```
