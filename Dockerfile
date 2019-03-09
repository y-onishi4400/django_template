FROM amazonlinux
RUN amazon-linux-extras install python3
RUN pip3 install --upgrade pip
RUN yum install -y python3-devel mysql-devel gcc
RUN mkdir /home/django_template
WORKDIR /home/django_template
ADD requirements.txt /home/django_template/
RUN pip3 install -r requirements.txt