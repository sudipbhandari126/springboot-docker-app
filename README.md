### Getting Started

- ```git clone git@github.com:sudipbhandari126/springboot-docker-app.git```

- ``cd springboot-docker-app``

- ```chmod +x docker-build```

- ```./docker-build image:tag```

- ```docker run --detach --publish 9091:9091 image:tag```

- ```curl -X GET http://localhost:9091/persons```

### hosted postgresql

I have used [elephantsql](https://api.elephantsql.com/) to
host a free postgres db. (Change the credentials as per your account)