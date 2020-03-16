FROM python:3.5.9

RUN mkdir /code
ADD setup.cfg /code/setup.cfg
ADD requirements.txt /code/requirements.txt
ADD manage.py /code/manage.py

ADD howdy /code/howdy
ADD helloapp /code/helloapp

WORKDIR /code

RUN pip install --no-cache-dir -r requirements.txt
RUN python3 manage.py migrate




CMD ["python3", "./manage.py", "runserver", "0.0.0.0:8001"]

