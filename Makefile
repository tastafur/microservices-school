lint:
	@node_modules/.bin/eslint .

qa:
	echo $(SERVICE_ENV)
	SERVICE_ENV=test
	@make lint && npm run test
	echo $(SERVICE_ENV)

ensure-dependencies:
	@npm run docker