install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace DataScience_demo_4Github.ipynb
	pytest --nbval DataScience_demo_4Github.ipynb

format:
	python -m nbqa black *.ipynb

lint:
	python -m nbqa flake8 *.ipynb

all: install lint format test
