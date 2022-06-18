### build and install local
```bash
# install deps
poetry install
# build package
poetry build
# install package
poetry install
```

### run tests local
```bash
# must have completed build and install
poetry run python tests/tests.py
```

### run local development
```bash
# must have completed build and install
poetry run python devops_exercise/main.py
```

### build docker image
```bash
docker build -t devops-exercise .
```

### test docker image
```bash
docker run --rm devops-exercise:latest tests/tests.py
```

### run docker image
```bash
docker run --rm -it -p 8000:8000/tcp devops-exercise:latest
```