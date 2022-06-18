# Thingler API

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

### run local development server
```bash
# must have completed build and install
poetry run python devops_exercise/main.py
```

### run local production server
```bash
# must have completed build and install
poetry run python -m gunicorn devops_exercise.main:app
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

### deployment
  1. Update package version number to desired in ```pyproject.toml```
  2. Commit and push branch to github
  3. Create a release in github with a tag of the version number
  4. Github action will package and push to dockerhub