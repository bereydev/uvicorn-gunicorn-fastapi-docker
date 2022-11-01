FROM bereydev/uvicorn-gunicorn:python3.11

LABEL maintainer="Jonathan Bereyziat <contact@bereyziat.dev>"

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./app /app
