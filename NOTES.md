### build local
```bash
# install deps
poetry install
# build package
poetry build
```

### run tests local
```bash
# must have built first
poetry install
poetry run python tests/tests.py
```

### build docker image
```bash
docker build -t devops-exercise .
```

### test docker image
```bash
docker run --rm devops-exercise:latest tests/tests.py
```