.PHONY: lint test package ci

# check code style with eslint
lint:
	npm run lint

# run the unit tests
test:
	npm test

# make the tgz file, tests must pass first
package: test
	npm pack

# run everything in order
ci: lint test package
