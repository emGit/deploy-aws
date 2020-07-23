FROM python:stretch

COPY . /app
WORKDIR /app

#RUN pip install --upgrade pip
#RUN pip install flask
#RUN pip install -r requirements.txt

RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN pip3 install -r requirements.txt

# ENTRYPOINT ["python", "app.py"]
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]