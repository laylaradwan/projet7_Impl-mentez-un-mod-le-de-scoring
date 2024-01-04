# Stage 0, "build-stage", based on Node.js, to build and compile the frontend
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

copy . .

EXPOSE 8000

CMD ["uvicorn","api:app", "-host", "0.0.0.0", "--port", "8000"]