# FROM python:3.5.9
FROM python:3.5.9-slim-buster

# ADD setup.cfg /setup.cfg
ADD requirements.txt /requirements.txt
ADD manage.py /manage.py


ADD howdy /howdy
ADD helloapp /helloapp

RUN pip install --no-cache-dir -r /requirements.txt
RUN python3 ./manage.py migrate


CMD ["python3", "./manage.py", "runserver", "0.0.0.0:8001"]

