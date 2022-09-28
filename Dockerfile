# Pull base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

RUN pip install pipenv

# Install dependencies
COPY Pipfile /code/
COPY Pipfile.lock /code/
RUN pipenv install --system --deploy

# Copy project
COPY . /code/

