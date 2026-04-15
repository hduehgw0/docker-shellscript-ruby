FROM ruby:3.2-slim

WORKDIR /app

COPY main.rb judge.sh input.txt output.txt ./

RUN chmod +x judge.sh

CMD ["./judge.sh"]
