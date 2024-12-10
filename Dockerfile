# Use an official Python image as the base
# use your python version, here is 3.10
FROM python:3.10-slim 

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements first to leverage Docker's caching
COPY requirements.txt .

# Install dependencies with pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app into the container
COPY . .

# Command to run your main function
CMD ["python", "main.py"]
