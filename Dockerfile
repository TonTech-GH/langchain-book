FROM python:3.12.1-slim-bullseye

WORKDIR /app

RUN apt update && apt -y upgrade && apt install -y \
    gcc

RUN pip install --upgrade pip && pip install \
    openai \
    langchain \
    langchain-openai \
    requests \
    streamlit \
    numpy \
    pandas \
    matplotlib \
    japanize-matplotlib \
    seaborn \
    jupyterlab \
    tqdm \
    ipywidgets

EXPOSE 8888

COPY . /app
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
