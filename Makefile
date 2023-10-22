# ARGS

DIRS	=	wp-files wp-db qbittorrent downloads

all:
		@for dir in $(DIRS); do \
                        sudo mkdir -p /home/$(USER)/data/$$dir; \
                done
# remove this line to not build in parallel
		@docker-compose -f srcs/docker-compose.yml build --parallel
		@docker-compose -f srcs/docker-compose.yml up --build -d


up:
		@for dir in $(DIRS); do \
                        sudo mkdir -p /home/$(USER)/data/$$dir; \
                done
		@docker-compose -f srcs/docker-compose.yml up -d


down:
		docker compose -f srcs/docker-compose.yml down

clean:
		@chmod 744 clean.sh
		@./clean.sh

re:
	@make --no-print-directory down
	@printf "[DOWN]\n"
	@make --no-print-directory up
	@printf "[UP]\n"
info:
		@echo "=============================== IMAGES ==============================="
		@docker images
		@echo
		@echo "============================= CONTAINERS ============================="
		@docker ps -a
		@echo
		@echo "=============== NETWORKS ==============="
		@docker network ls
		@echo
		@echo "====== VOLUMES ======"
		@docker volume ls

.PHONY: all up down clean re info

