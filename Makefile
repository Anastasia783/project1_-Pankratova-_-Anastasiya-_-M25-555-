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

lint:
	ruff check .

lint-fix:
	ruff check --fix .

format:
	ruff format .

check: lint
	@echo "All checks passed!"

quality: lint format check
	@echo "✅ Code quality checks passed!"

clean:
	rm -rf dist/ build/ *.egg-info/

all: clean install quality build package-install test

.PHONY: install project build publish package-install test lint lint-fix format check quality clean all
