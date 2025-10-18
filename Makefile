install:
	poetry install

project:
	python labyrinth_game/main.py

build:
	poetry build

publish-test:
	poetry publish --dry-run

package-install:
	python -m pip install --force-reinstall dist/*.whl

test:
	python -c "from labyrinth_game.main import main; main()"

clean:
	rm -rf dist/ build/ *.egg-info/

all: clean build package-install test

.PHONY: install project build publish-test package-install test clean all
