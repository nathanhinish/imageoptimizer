FROM alpine

RUN apk add --no-cache optipng jpegoptim bash

COPY run.sh png.sh jpg.sh /

RUN chmod +x /*.sh

CMD /run.sh


