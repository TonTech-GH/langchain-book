FROM python:3.12.1-slim-bullseye

WORKDIR /app

RUN apt update && apt -y upgrade && apt install -y \
    gcc

RUN pip install --upgrade pip && pip install \
    openai==1.12.0 \
    langchain==0.1.9 \
    langchain-openai==0.0.7 \
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

COPY . /app
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
