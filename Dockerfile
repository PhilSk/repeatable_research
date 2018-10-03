FROM python:3.7-slim
RUN pip install --no-cache-dir notebook==5.*

ENV NB_USER philip
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

RUN cd home/philip
RUN pip install --user -r requirements.txt

CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]