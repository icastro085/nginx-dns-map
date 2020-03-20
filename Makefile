.PHONY: build
build:
	@docker build . --rm -t nginx-dns-map

.PHONY: start
start:
	@docker run \
		--rm \
		-v "/var/www/":"/var/www/" \
		-p 80:80 \
		-p 443:443 \
		--net onsite-net \
		-it nginx-dns-map
