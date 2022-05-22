
# Docker Image | Build and Push to Repository

Challenge 3 | Week 4 | Kevin Rivera

The main task of the Challenge was related to work on an frontend using nginx and build and push to Dockerhub repository using CI/CD

## Checklist

 - [Dockerfile](https://github.com/kevinhrivera17/week4/blob/master/dockerfile)
 - [CI/CD](https://github.com/kevinhrivera17/week4/blob/master/.github/workflows/docker-build.yml)
 - [Repository Dockerhub](https://hub.docker.com/repository/docker/kev1723/week4nginx)
## Process
I build a quick blog template in html just to have something that looks fancy and good. :)

When building the dockerfile I took an alpine nginx based image because of the size they provide, as the challenge request just show a frontend I considered take the small image nginx provide. Then I move forward buildin the CI/CD using github action, the challenge does not resquest it, but it is the easiest way to build and push the image to the dockerhub.

So I decide to make a quick research about what github action marketplace could provide to solve this issue and I found some uses I could use to achieve the goal, for that there were 2 requirement, 1. Create a Repository on Dockerhub, 2. Generate a token from Dockerhub.

Once I got them i add the token the secrets setting on github, to be more specific on the repository settings.

Then I push these files to the main branch and the magic happened.
## Download Image

To download this image from my repository you should run the command bellow
```bash
  docker pull kev1723/week4nginx:latest
```
by default nginx run on port 80, but once the image is on our machine you can change the port when you run a container
```bash
  docker run -d -p 8081:80 kev1723/week4nginx
```
where 8081 is the port you should replace according to you convinience
## Up and Running
If everything goes good you should have a image like this

Remember to use the port you set when creating a container. In my case 8081

![App Screenshot](http://kevin-rivera.com/wp-content/uploads/2022/05/local.png)


## Next Updates

- Will work on git ignores so I will move only the necessary files.
- Create a versioned images, so I will not have only a "latest" version


## Authors

- [@kevinhrivera17](https://github.com/kevinhrivera17)

