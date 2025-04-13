# Use specific Python version
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements FIRST for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy remaining files
COPY . .

# Expose port
EXPOSE 8080

# Run app
ENTRYPOINT ["python"]
CMD ["app.py"]