FROM python:3.10

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install --upgrade pip awsebcli

RUN git config --system --add safe.directory /github/workspace

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
