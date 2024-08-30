FROM jupyter/minimal-notebook

COPY ./stanford_alpaca/requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt