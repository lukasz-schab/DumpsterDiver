FROM python:3.6.5-alpine@sha256:3f9e4710fc0dfb2aeaa32016bd8a0805f90612e61b5fc5b1194e1d9d1f7edca2

ADD requirements.txt ./
ADD *.py ./
ADD *.yaml ./

RUN pip install --no-cache-dir -r requirements.txt && \
    chmod +x DumpsterDiver.py && \
    mkdir -p /var/log/dumpsterdiver

ENTRYPOINT ["python","DumpsterDiver.py"]
