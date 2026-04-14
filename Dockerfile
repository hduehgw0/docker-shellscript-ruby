FROM ruby:3.2-slim

WORKDIR /app

COPY main.rb judge.sh input.txt output.txt ./

CMD ["bash", "judge.sh"]
