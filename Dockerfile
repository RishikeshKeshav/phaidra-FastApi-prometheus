# Dockerfile for FastAPI application
FROM python:3.9-slim

# Install dependencies
RUN pip install fastapi uvicorn prometheus-client httpx

# Copy the application code
COPY main.py /app/main.py

WORKDIR /app

# Command to run FastAPI app
CMD ["python","main.py"]
