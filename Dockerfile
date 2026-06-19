FROM python:3.9-slim
WORKDIR /app
RUN apt-get update && apt-get install -y gcc pkg-config default-libmysqlclient-dev 
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]

