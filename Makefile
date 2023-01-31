## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

# for linux
setup:
	# Create python virtualenv & source it
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

# only for windows
setup-win:
	python -m venv .devops
	.\.devops\Scripts\activate

# install for linux
# added joblib and pytest
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

# Additional, optional, tests could go here 
# These ones do not work
test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb

# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
# docker run --rm -i hadolint/hadolint < Dockerfile
lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
