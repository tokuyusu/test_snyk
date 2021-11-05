# Test to create vulnerable docker image
# Using vulnerable Python library: flask 0.12.0
# https://security.snyk.io/vuln/SNYK-PYTHON-FLASK-451637

# FROM python:3.8-buster
FROM python
RUN pip3 install flask==0.12.0
COPY flask_server.py /

CMD python flask_server.py