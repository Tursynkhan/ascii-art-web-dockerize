build:
	docker image build -f Dockerfile -t dockerize .
run:
	docker container run -p 8080:8080 --detach --name web dockerize
allstop:
	docker stop $(docker ps -a -q)
prune:
	docker system prune -a