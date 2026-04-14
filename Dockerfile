FROM python:3.9-slim

WORKDIR /app

COPY main.py judge.sh input.txt output.txt ./

CMD ["bash", "judge.sh"]
