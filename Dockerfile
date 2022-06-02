FROM continuumio/miniconda3

LABEL maintainer="Palle Lakshmi Parimala"

ADD . /home/mle-training

WORKDIR home/mle-training

ADD env.yml .
ADD entrypoint.sh .

RUN conda env create -n hp-dev -f env.yml
ADD entrypoint.sh .

RUN conda run -n hp-dev pip install .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]







