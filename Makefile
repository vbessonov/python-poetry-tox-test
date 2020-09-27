.PHONY: prepare install test clean
.DEFAULT_GOAL := all

all: install test
ci: all

POETRY_VERSION = 1.0.10

PROJECT = poetry-tox-test
PACKAGE = poetry_tox_test
DEV ?= 1

prepare:
	python --version
	python -m pip install pip==${PIP_VERSION}
	python -m pip install poetry==${POETRY_VERSION}

install:
	make prepare
	poetry install -vvv

test:
	poetry nosetests -vvv

clean:
	rm -rf build dist
