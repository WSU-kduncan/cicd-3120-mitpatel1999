
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
  - what credentials would you recommend providing?
- Configuring GitHub Secrets
  - what credentials are needed - DockerHub credentials (do not state your credentials)
  - set secrets and secret names
- Behavior of GitHub workflow
  - what does it do and when
  - variables to change (repository, etc.)

## Deployment 

- Container restart script
  - what it does
- Webhook task definition file
  - what it does
- Setting up a webhook on the server
  - How you created you own listener
  - How you installed and are running the [webhook on GitHub](https://github.com/adnanh/webhook)
- Setting up a notifier in GitHub or DockerHub

## Diagramming 

- Locigically diagrammed steps for continuous integration workflow
- Locigically diagrammed steps for continuous deployment workflow

