FROM 3.15.0a6-alpine3.23 
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
EXPOSE 8000
CMD [ "python", "app.py" ]