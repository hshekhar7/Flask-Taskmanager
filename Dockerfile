# Using whatever image u need
FROM python:3.9-slim


ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# This is the working directory
WORKDIR /app

# This will copy all the project files to the container
COPY . /app/

# For installing dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Default port for flask
EXPOSE 5000

# For running the app
CMD ["python", "app.py"]
