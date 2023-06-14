FROM python:3.8.0-slim
WORKDIR /app
ADD . /app
RUN pip install --upgrade pip
RUN pip install flake8-html
RUN pip install pytest-html
RUN pip install -r requirements.txt
CMD ["python","app.py"]