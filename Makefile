.PHONY: .coverage
.coverage:
	mkdir -p $(CURDIR)/.coverage

.PHONY: test-unit
test-unit: .coverage
	GOOS=linux go test -coverprofile=.coverage/coverage-unit.txt golang-codecov/pkg/...
