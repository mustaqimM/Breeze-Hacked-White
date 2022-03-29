CWD := $(shell pwd)

.PHONY: all
all: clean build

.PHONY: install
install: build
	@mkdir -p ~/.icons
	@cp -r Breeze_Hacked_White ~/.icons/Breeze_Hacked_White
	@echo ::: INSTALL :::

.PHONY: build
build: Breeze_Hacked_White
	@echo ::: BUILD :::

.PHONY: clean
	-@rm -rf build Breeze_Hacked_White &>/dev/null | true
	@echo ::: CLEAN :::

Breeze_Hacked_White:
	@./build.sh
