# Node code runner

- This is a simple nodejs code runner. It can open a interactive teminal from docker container.

## Usage

- Clone any git repo in the container and run the code.
- use `git clone <repo url>` command to clone any git repo.
- cd into the repo and run `npm install` to install all the dependencies.
- run `npm start` to run the code.
- open `localhost:8080` in your browser to see the output.

## How to use

- Clone the repo

```bash
git clone https://github.com/abhishekpatelmc/docker-node-runner.git
```

- Build the image

```bash
docker build -t code-runner .
```

- Run the image

```bash
docker run  --name workspace -p 8080:8080 -it code-runner
```

- If the terminal is not interactive, run the following command

```sh
/bin/bash
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
