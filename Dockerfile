# syntax=docker/dockerfile:1
FROM python:3.10-alpine

ARG USER=demo
ARG GROUP=demo
ARG UID=1000
ARG GID=1000
ARG PORT=8000

ENV PORT=${PORT}

RUN apk -U upgrade
RUN addgroup --gid ${GID} ${GROUP} \
  && adduser --disabled-password --no-create-home --home "/demo" --uid ${UID} --ingroup ${GROUP} ${USER} \
  && chown -R ${UID}:${GID} /demo
USER ${USER}
WORKDIR /demo

COPY --chown=${USER}:${GROUP} . .
RUN pip3 install --upgrade pip && pip3 install --user -r requirements.txt && rm -rf requirements.txt

CMD [ "python3", "-m" , "flask", "run"]