FROM python:3.7

LABEL "com.github.actions.name"="Pylint test if your python code is correctly formatted."
LABEL "com.github.actions.description"="Pylintto test if your python code is correctly formatted."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="106a4e"
LABEL "repository"="https://github.com/CrunchMind/pylint-action"
LABEL "homepage"="https://github.com/CrunchMind/pylint-action"
LABEL "maintainer"="Oshri Barazani <oshrib@pubplus.com>"

RUN pip install --upgrade pip
RUN pip install pylint

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
