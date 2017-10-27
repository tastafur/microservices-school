lint:
	@node_modules/.bin/eslint .

qa:
	echo $SERVICE_ENV
	@make lint && SERVICE_ENV=test npm run test

ensure-dependencies:
	@npm run docker