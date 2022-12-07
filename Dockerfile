FROM python:3

WORKDIR /app

# Necessary for part 3
RUN apt update && apt install -y imagemagick
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ADD . /app

EXPOSE 5000

CMD ["flask", "--app", "application.py", "--debug", "run", "--host=0.0.0.0"]
