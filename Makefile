PYTHON := ./venv/bin/python
PIP := ./venv/bin/python -m pip
PYTEST := ./venv/bin/pytest

.PHONY: test clean

$(PYTHON):
	python3 -m venv venv

$(PYTEST): | $(PYTHON)
	$(PIP) install --upgrade pip
	$(PIP) install pytest

test: hello_world.py | $(PYTEST)
	$(PYTEST)

clean:
	rm -rf venv
