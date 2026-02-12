FROM python:3.15.0a6-alpine3.23 
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
# RUN is a build time command, so it won't be executed when the container is running. 
# If you want to run a command when the container starts, you should use CMD or ENTRYPOINT.
COPY . .
EXPOSE 8000
CMD [ "python", "app.py" ]
# Provide defaults for an executing container. 
# If an executable is not specified, then ENTRYPOINT must be specified as well. There can only be one CMD instruction in a Dockerfile.
# CMD is used to specify the default command to run when the container starts. 
# It can be overridden by providing a different command when running the container.
