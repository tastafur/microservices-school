lint:
	@node_modules/.bin/eslint .

qa:
	@make lint && SERVICE_ENV=test npm run test

ensure-dependencies:
	@npm run docker