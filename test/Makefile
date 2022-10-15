.POSIX:
.PHONY: *

filter = .

default: static smoke component functional contract integration

static smoke component functional contract integration e2e chaos:
	gotestsum --format testname -- -timeout 30m ./$@ -run "${filter}"
