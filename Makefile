.PHONY: build

BIN := demo.bin

build:
	go build -o ${BIN} -ldflags="-X 'main.version=${VERSION}'"

run:
	./${BIN}