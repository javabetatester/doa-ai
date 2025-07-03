.PHONY: start
start:
	bin/rails server

.PHONY: lint
lint:
	bin/rubocop

.PHONY: lint-fix
lint-fix:
	bin/rubocop -a

.PHONY: test
test:
	bin/rails db:test:prepare test

.PHONY: scan
scan:
	bin/brakeman --no-pager