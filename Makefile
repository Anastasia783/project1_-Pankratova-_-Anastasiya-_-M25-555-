install:
	poetry install

project:
	python labyrinth_game/main.py

build:
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python -m pip install --force-reinstall dist/*.whl

test:
	python -c "from labyrinth_game.main import main; main()"

clean:
	rm -rf dist/ build/ *.egg-info/

.PHONY: install project build publish package-install test clean
