PYTHON := python


.PHONY: build
build: initpy
	poetry build


.PHONY: bump-version
bump-version:
	poetry version minor
	git add pyproject.toml
	git commit -m 'Bump version'


.PHONY: submodule
submodule:
	git submodule add https://github.com/waveshare/e-Paper.git epaper/e-Paper


.PHONY: clean
clean:
	rm -rf ./dist


.PHONY: clean-sub
clean-sub:
	git -C epaper/e-Paper clean -fd


.PHONY: initpy
initpy:
	touch epaper/e-Paper/RaspberryPi_JetsonNano/__init__.py
	touch epaper/e-Paper/RaspberryPi_JetsonNano/python/__init__.py
	touch epaper/e-Paper/RaspberryPi_JetsonNano/python/lib/__init__.py


.PHONY: publish
publish: clean build
	poetry publish


.PHONY: setup
setup:
	git submodule update --init --recursive
	poetry install
