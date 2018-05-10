build:
	go build
linux:
	env GOOS=linux GOARCH=amd64 go build
dev:
    linux ./bin/testdev
test:
	ginkgo .
coverage:
	go test -coverprofile test.cov
report: coverage
	go tool cover -html=test.cov


.PHONY: build test coverage report
