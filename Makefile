DB_VOL=./db
UP_VOL=./uploads

all: up

up:
	docker compose up --detach

down:
	docker compose down --volumes

clean: down del
	docker system prune -f

del:
	sudo rm -rf $(DB_VOL)
	sudo rm -rf $(UP_VOL)

fclean: clean
	docker system prune -af

re: clean all

.PHONY: all up down clean del fclean re
