FROM ubuntu:latest
RUN apt update
RUN apt -y install git python3-venv python3-pip libssl-dev
WORKDIR /opt
RUN git clone https://github.com/Neo23x0/Loki.git
WORKDIR /opt/Loki

# Create and activate virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN chmod a+x loki.py
RUN pip install -r requirements.txt

ENTRYPOINT [ "/opt/venv/bin/python", "/opt/Loki/loki.py" ]
CMD ["--help"]