FROM python:alpine

WORKDIR /app

EXPOSE 5000

ARG CACHEBUST=1

COPY requirements.txt ./requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
