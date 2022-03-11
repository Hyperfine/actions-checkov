FROM alpine:3.10 

# Copy the script and the requirements.txt to the dockerfile
COPY  entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt

#ADD python3 and pip3 to the dockerfile
RUN apk add --no-cache python3 py3-pip && \ 
pip3 install -r requirements.txt && \ 
chmod 777 entrypoint.sh

## Set the entry point to docker run 
ENTRYPOINT ["/entrypoint.sh"]