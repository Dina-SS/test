FROM python:3.8-slim
ENV PYTHONUNBUFFERED True

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . .

# Install dependencies:
COPY requirements.txt .
RUN python3 -m pip install --default-timeout=100 -r requirements.txt
RUN python3 -m pip install --default-timeout=100 Flask gunicorn


#EXPOSE 8080
#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 flask_app:app
#CMD ["python", "flask_app.py"]
CMD gunicorn --bind 0.0.0.0:$PORT flask_app 
