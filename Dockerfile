# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask app
EXPOSE 5000

# Set the environment variable to run the Flask app
ENV FLASK_APP=app.py

# Run the Flask app 
CMD ["flask", "run", "--host=0.0.0.0"]
