docker build -t jenkins-slave . && \
docker tag jenkins-slave:latest localhost:5000/cs/jenkins-slave:latest && \
docker push localhost:5000/cs/jenkins-slave:latest
