.PHONY: run
run:
	docker build -t sike.io .
	mkdir -p log
	docker run -p 8080:80 -d -v `pwd`/log:/var/log/nginx sike.io

.PHONY: deploy
deploy:
	rsync -Paz ./ root@vukw:/www/sike.io