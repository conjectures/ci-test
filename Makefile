
docker-dev:
	docker build -t nodecicd:v0.1.2-dev -f build/Dockerfile .

run:
	docker run -d -p 8080:8080 nodecicd:v0.1.2-dev
