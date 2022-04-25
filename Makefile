generate.release:
	hugo -s changelog new released/`date +%Y%m%d%H%M%S`.md

generate.deprecation:
	hugo -s changelog new deprecated/`date +%Y%m%d%H%M%S`.md

develop:
	hugo -s changelog server --bind 0.0.0.0 --baseURL=http://localhost/

deploy:
	hugo -s changelog --baseURL=https://changelog.shipyard.build/
