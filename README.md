# cicd-3120-mitpatel1999
PART 1: 

1. Overview:
	Make Github repo
	mkdir website
	make a html file and put content in

2. Install Docker: 
	sudo apt-get update
	sudo apt-get remove docker docker-engine docker.io
	sudo apt install docker.io
	sudo systemctl start docker
	sudo systemctl enable docker

   Build Container:
	vim Dockerfile (FROM ubuntu
			ENV DEBIAN_FRONTEND=noninteractive
			RUN apt-get update
			RUN apt-get install apache2 -y
			RUN apt-get install apache2-utils -y
			RUN apt-get clean
			COPY index.html /var/www/html/
			EXPOSE 80
			CMD ["apache2ctl","-D","FOREGROUND"])

	docker build -t="webserver"
	docker run -d -p 808:80 webserver
	sudo docker images (See your image)
   Run: 
	Type local host ip (127.0.0.1:808)
	Then you can see your website



PART 2:


