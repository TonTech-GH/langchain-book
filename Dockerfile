FROM python:3.12.1-slim-bullseye

WORKDIR /app

RUN apt update && apt -y upgrade && apt install -y \
    gcc \
    build-essential \
    git \
    sqlite3

RUN pip install --upgrade pip && pip install \
    openai==1.12.0 \
    langchain==0.1.9 \
    langchain-openai==0.0.7 \
    langchain-experimental==0.0.53 \
    chromadb==0.3.29 \
    jupyterlab \
    ipywidgets \
    tqdm \
    requests \
    numpy \
    pandas \
    matplotlib \
    japanize-matplotlib \
    seaborn \
    streamlit

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
