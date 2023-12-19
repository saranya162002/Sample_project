FROM python:3.10-slim
WORKDIR /home/user/Documents/Kubernetes/app
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt ./
COPY display.py ./
RUN pip install -r requirements.txt
#RUN pip3 freeze > ./app/requirements.txt
EXPOSE 8501
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health
ENTRYPOINT ["streamlit", "run", "display.py", "--server.port=8501", "--server.address=0.0.0.0"]
