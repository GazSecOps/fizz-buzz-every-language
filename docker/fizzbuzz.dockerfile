FROM alpine:3.19

# FizzBuzz in Docker
# Build and run: docker build -t fizzbuzz . && docker run fizzbuzz

RUN apk add --no-cache bash

COPY fizzbuzz.sh /app/fizzbuzz.sh
RUN chmod +x /app/fizzbuzz.sh

CMD ["/app/fizzbuzz.sh"]
