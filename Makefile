run:
	docker run -d -p 88:4200 -v logs:/app/data --env-file ./config/.env --rm --name logsapp-env2 logsapp:env
stop:
	docker stop logsapp-env2

