default:
	@echo "Please see the Makefile for a list of commands"

development:
	jekyll serve --watch

reload-production:
	ssh docker-host
	docker stop nginx-jrclarkin
	docker rm nginx-jrclarkin
	# EXPOSE:INTERNAL ports
	docker run --name nginx-jrclarkin -p 80:80 -d -v /usr/www/jrclarkin.com:/usr/share/nginx/html:ro nginx

publish:
	# From: http://nathangrigg.net/2012/04/rsyncing-jekyll/ this suggestion.
	rsync -v --compress --recursive --checksum --delete \
    --exclude '.DS_Store' \
		--exclude 'temp' \
    _site/ root@docker-host:/usr/www/jrclarkin.com
