FROM docker.io/library/python:3.10.6-slim

# Install app
COPY . /usr/app
WORKDIR /usr/app

# Install dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt \
 && apt update && apt install curl -y

EXPOSE 8000

# Run Battlesnake
CMD [ "python", "main.py" ]

RUN ./test.sh
