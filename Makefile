up:
	docker-compose -f ./srcs/docker-compose.yml up --build

down:
	docker-compose -f ./srcs/docker-compose.yml down

down_v:
	docker-compose -f ./srcs/docker-compose.yml down -v

clear_data:
	cd /home/msekhsou/data/ && sudo rm -rf wp_data/* && sudo rm -rf data_base/*
