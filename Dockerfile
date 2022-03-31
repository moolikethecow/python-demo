# syntax=docker/dockerfile:1
FROM python:3.10.0a7-slim-buster

RUN useradd -ms /bin/bash moo
USER moo
WORKDIR /home/moo/
ENV PATH="/home/moo/.local/bin:${PATH}"

RUN pip3 install --upgrade pip

COPY --chown=moo:moo requirements.txt requirements.txt
RUN pip3 install --user -r requirements.txt

COPY --chown=moo:moo . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]