# Python base image
FROM python:3.12

# Working directory set karna
WORKDIR /app

# Current directory ki saari files ko Docker container mein copy karna
COPY . .

# Flask install karna
RUN pip install --no-cache-dir flask

# Expose port 5000 (Flask default port)
EXPOSE 5000

# Flask app ko run karna
CMD ["flask", "run", "app.py"]
