FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
#for exposing the port for this flask application
EXPOSE 5000
#For hosting the application from outside of the world
CMD flask run -h 0.0.0.0 -p 5000