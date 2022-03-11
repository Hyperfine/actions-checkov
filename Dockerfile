FROM bridgecrew/checkov
# Copy the script and the requirements.txt to the dockerfile
COPY  entrypoint.sh /entrypoint.sh



RUN chmod 777 entrypoint.sh



## Set the entry point to docker run 
ENTRYPOINT ["/entrypoint.sh"]