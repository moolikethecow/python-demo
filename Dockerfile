# syntax=docker/dockerfile:1
FROM python:3.10.0a7-slim-buster

RUN pip3 install --upgrade pip

RUN adduser -D moo
USER moo
WORKDIR /home/moo/python-demo

COPY --chown=moo:moo requirements.txt requirements.txt
RUN pip3 install --user -r requirements.txt

ENV PATH="/home/moo/python-demo/.local/bin:${PATH}"

COPY --chown=moo:moo . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]