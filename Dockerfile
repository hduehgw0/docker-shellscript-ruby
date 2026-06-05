FROM ruby:3.2-slim

WORKDIR /app

COPY main.rb judge.sh ./

RUN chmod +x judge.sh

CMD ["./judge.sh"]
