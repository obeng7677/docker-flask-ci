# Use official Python image
FROM python:3.10-slim

# Set workdir
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app app

# Expose port
EXPOSE 5000

# Start app
CMD ["python", "app/main.py"]

