build:
	docker-compose build
up:
	docker-compose up -d
p:
	docker-compose up
down:
	docker-compose down
sh:
	docker-compose exec nuxt_practice ash
logf:
	docker-comopse logs -f --tail=100 nuxt_practice