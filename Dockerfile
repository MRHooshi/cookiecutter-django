FROM docker.arvancloud.ir/python:{{ cookiecutter.python_version }}-slim-bookworm

WORKDIR /src/

COPY requirements.txt /src/

RUN pip install -r requirements.txt

COPY . /src/

COPY ./compose/ /src/
