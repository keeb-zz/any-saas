from keeb/blog

ADD . /website
RUN apt-get install -y python-setuptools
RUN easy_install pip
RUN pip install -r /website/requirements.txt

EXPOSE 5000

CMD ["python", "website/api.py"]
