# Test to create vulnerable docker image
# Using vulnerable Python library: flask 0.12.0
# https://security.snyk.io/vuln/SNYK-PYTHON-FLASK-451637

FROM python:3.11-rc-slim
RUN pip3 install flask==0.12.0
COPY ./* /

CMD python flask_server.py
