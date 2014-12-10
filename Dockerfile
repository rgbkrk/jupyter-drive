FROM jupyter/minimal

USER root

ADD . /srv/jupyter-drive/
RUN cd /srv/jupyter-drive/ && pip3 install -e .

USER jovyan
WORKDIR jovyan

RUN python3 -m jupyterdrive

CMD ipython3 notebook
