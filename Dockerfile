FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1
ENV PIP_NO_CACHE_DIR=1

WORKDIR /app

COPY packages.txt .

RUN apt-get update && \
    xargs -a packages.txt apt-get install -y && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

EXPOSE 7860

CMD ["streamlit","run","app.py","--server.port=7860","--server.address=0.0.0.0"]