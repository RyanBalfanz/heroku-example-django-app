FROM python:3.6.4
ENV PYTHONUNBUFFERED 1
WORKDIR /usr/src/app
RUN pip install --upgrade pipenv
COPY Pipfile ./
COPY Pipfile.lock ./
RUN pipenv install --system --dev
COPY . ./
