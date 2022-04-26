develop: clean build run

.PHONY: build
build:
	docker-compose build

clean:
	docker-compose stop -t0
	docker-compose rm -f

run:
	docker-compose up

generate.release:
	docker-compose run server -s changelog new released/`date +%Y%m%d%H%M%S`.md

generate.deprecation:
	docker-compose run server -s changelog new deprecated/`date +%Y%m%d%H%M%S`.md

deploy:
	docker-compose run server -s changelog --baseURL=https://changelog.shipyard.build/
