NAME = electra-tools

ifeq ($(OS), Windows_NT)
	BINARY_NAME = ${NAME}.exe
else
	BINARY_NAME = ${NAME}
endif

install:
	godep restore

start:
	go build && "./${BINARY_NAME}"

test:
	ginkgo -r --randomizeAllSpecs --randomizeSuites
