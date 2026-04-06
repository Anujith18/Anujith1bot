FROM python:3.10-slim
RUN apt update && apt install -y git && apt clean
COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip && pip install -r /requirements.txt
WORKDIR /VJ-FILTER-BOT
COPY . /VJ-FILTER-BOT
CMD ["python", "bot.py"]
