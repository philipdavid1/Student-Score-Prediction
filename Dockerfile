# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code and requirements file to the container
COPY app.py /app/
COPY requirements.txt /app/

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your application will run on (assuming your app runs on port 8000)
EXPOSE 8000

# Command to run your application when the container starts
CMD ["python", "app.py"]
