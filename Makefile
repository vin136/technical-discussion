install:
	pip install --upgrade pip && \
	  pip install -r requirements.txt
	  
format:
	black *.py

link:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py