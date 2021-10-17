PYTHON := python3


.PHONY: build
build:
	poetry build


.PHONY: bump-version
bump-version:
	poetry version minor
	git add pyproject.toml
	git commit -m 'Bump version'


.PHONY: submodule
submodule:
	git submodule add https://github.com/waveshare/e-Paper.git epaper/e-Paper


.PHONY: clean-sub
clean-sub:
	git -C epaper/e-Paper clean -fd


.PHONY: initpy
initpy:
	touch epaper/e-Paper/RaspberryPi_JetsonNano/__init__.py
	touch epaper/e-Paper/RaspberryPi_JetsonNano/python/__init__.py
	touch epaper/e-Paper/RaspberryPi_JetsonNano/python/lib/__init__.py


.PHONY: publish
publish: initpy
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


