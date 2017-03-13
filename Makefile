default: image ;

image:
	docker build -t steenzout/resque:latest -f Dockerfile .
