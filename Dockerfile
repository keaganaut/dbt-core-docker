FROM python:3.8-slim
RUN apt-get update --yes && \
    apt-get install --yes git curl

RUN pip install poetry && \
    poetry config virtualenvs.create true && \
    poetry config virtualenvs.in-project true

WORKDIR /app

COPY pyproject.toml poetry.lock ./
RUN poetry install --no-dev
COPY . .
