install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval-lax DataScience_demo_4Github.ipynb

lint: 
	pylint --disable=R,C *.py

format:
	black *.py

all: install lint format test