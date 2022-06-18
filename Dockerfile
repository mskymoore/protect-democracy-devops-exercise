FROM python:3.9-slim
RUN mkdir /app
COPY . /app/
RUN pip install poetry
WORKDIR /app
RUN poetry install
RUN poetry build
RUN pip install .
EXPOSE 8000
ENTRYPOINT [ "python" ]
CMD [ "-m", "gunicorn", "devops_exercise.main:app" ]