install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
    source venv/bin/activate;\
	pytest --nbval *.ipynb