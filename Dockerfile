# Dockerfile
# Use Python 3.8 as base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local app.py file into the container
COPY app.py /app/

# Install dependencies
RUN pip install flask

# Expose port 5000 (Flask default)
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
