.PHONY: run-docker-compose

run-docker-compose:
	python -m pip install -r requirements.txt
	docker compose up --build
