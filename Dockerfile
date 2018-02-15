FROM registry.centos.org/centos/python:latest

RUN yum -y install git

RUN mkdir -p /opt/src/app

RUN cd /opt/src/app && git clone https://github.com/Lujeni/matterllo.git

WORKDIR /opt/src/app/matterllo

# Install all required Python modules
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements_base.txt

RUN python manage.py makemigrations

EXPOSE 8080

CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000
