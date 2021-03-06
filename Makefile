
.PHONY: dep run build docker release install test deploy

run:
	ng serve --host 0.0.0.0 --disable-host-check

build:
	ng build --prod --aot

runprod: build
	ruby -run -e httpd ./dist/ -p 8080

deploy: build
	firebase deploy
