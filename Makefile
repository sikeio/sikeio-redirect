.PHONY: run
run:
	docker stop sike.io
	docker rm sike.io
	docker build -t sike.io .
	mkdir -p log
	docker run --name=sike.io -p 80:80 -d -v `pwd`/log:/var/log/nginx sike.io

.PHONY: deploy
deploy:
	rsync -Paz ./ root@vukw:/www/sike.io