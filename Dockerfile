FROM python:3.10-slim-bookworm

RUN pip install chromadb==0.5.3
RUN mkdir db

EXPOSE 7222
CMD [ "python", "-m", "chromadb.cli.cli", "run", "--host", "0.0.0.0", "--port", "7222", "--path", "/db" ]