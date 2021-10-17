PYTHON := python3


.PHONY: build
build:
	poetry build


.PHONY: bump-version
bump-version:
	poetry version minor


.PHONY: submodule
submodule:
	git submodule add https://github.com/waveshare/e-Paper.git epaper/e-Paper


.PHONY: publish
publish:
	rm -rf ./dist
	poetry publish --build


.PHONY: setup
setup:
	git submodule update --init --recursive


.PHONY: setup-poetry
setup-poetry:
	if !(type "poetry" > /dev/null 2>&1); then\
		/bin/bash -c "$$(curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | $(PYTHON) -)";\
	fi
