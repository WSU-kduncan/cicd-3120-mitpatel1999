
# Project 5 



## Repo contents 

- `README.md`
- `website` folder with website pages
- `Dockerfile`
- GitHub action yml file in `.github/workflows`
- webhook related config files
  - container restart script
  - webhook definition file

## docker basics + Dockerfile 

- Project Overview
  - Make Github repo
  - Create a directory called website
  - Create a html file and put content
	
- Run project locally
  - how you installed docker + dependencies (WSL2, for example)
     - sudo apt-get update
     - sudo apt-get remove docker docker-engine docker.io
     - sudo apt install docker.io
     - sudo systemctl start docker
     - sudo systemctl enable docker
  - how to build the container
     - vim Dockerfile 
    ( FROM httpd:2.4
      COPY website/index.html /var/www/html/
      EXPOSE 80 )
     - docker build -t="webserver"
     - docker run -d -p 808:80 webserver
     - sudo docker images (See your image)
     
  - how to run the container
     - docker build -t="webserver"
     - docker run -d -p 808:80 webserver
     - sudo docker images (See your image)
     
  - how to view the project (open a browser...go to ip and port...)
     - Type local host ip (127.0.0.1:808)
     - Then you can see your website

## GitHub Actions and DockerHub 

- Create DockerHub public repo
  - Sign into Docker Hub
  - Click on Repositories
  - Create Repository
  - Fill out the name and description and for Visibility choose Public
  
- How to authenticate with DockerHub via CLI using Dockhub credentials
  - Go to settings 
  - Click on Security
  - Click on New Access Token
  - Provide the information and use the command to sign in and save the token.
- Configuring GitHub Secrets
  - Go to Github
  - Go to Settings then Secrets
  - Create new Secret and name it DOCKER_HUB_USERNAME and provide the Docker ID in the value
  - Create another Secret and name it DOCKER_HUB_ACCESS_TOKEN and provide the Token in the value
- Behavior of GitHub workflow
  - Workflow is designed to use your Github and action to build and push your image to Docker Hub when triggered. The .yml file was from a template and I changed things like Secrets and my Docker Hub repostiory name. 

## Deployment 

- Container restart script
  - Script that will stop the container, remove containers and update the images and run the container. 
- Webhook task definition file
  - Executes the file and call the script that I made called restart.sh. 
- Setting up a webhook on the server
  - Listener: webhook -hooks path/to/webhook-config.json -verbose
  - Webhook: sudo apt install webhook
   	     webhook -hooks hooks.json -verbose
- Setting up a notifier in GitHub or DockerHub
  - Docker Hub:
   	- Go to Repo
     	- Go to Webhook tab
     	- Add name and URL then click create

## Diagramming 

![Screenshot 2022-04-22 130442](https://user-images.githubusercontent.com/77901596/164761383-ccc854ad-6ce2-464a-ae38-4bd41961527e.png)




