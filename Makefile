PYTHON := ./venv/bin/python
PIP := ./venv/bin/python -m pip
PYTEST := ./venv/bin/pytest

.PHONY: run test clean

$(PYTHON):
	python3 -m venv venv

$(PYTEST): | $(PYTHON)
	$(PIP) install --upgrade pip
	$(PIP) install pytest

run: | $(PYTHON)
	$(PYTHON) hello_world.py

test: | $(PYTEST)
	$(PYTEST)

clean:
	rm -rf venv
