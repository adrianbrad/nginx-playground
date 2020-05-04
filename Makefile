run:
	-docker stop nginx_playground
	-docker rm nginx_playground
	docker run \
		--mount type=bind,source=$(shell pwd)/conf,target=/etc/nginx/conf.d,readonly \
		--publish 8090:80 \
		--name nginx_playground \
		openresty/openresty:latest
