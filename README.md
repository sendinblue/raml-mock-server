# RAML Mock Server 

This application allows you to run a REST API mock sever which uses the [RAML](https://raml.org/) format for endpoint definition. 

## Demo
To run the demo the API definition file `raml/api.raml` is required which creates a mock server with an endpoint.

The file `api.raml` contains one basic example of `GET` request. Check the RAML [developer's page](https://raml.org/developer) to explore more.

- Execute below command to start the demo:
```-
    $ docker-compose up -d
```

- Open [http://localhost:8000/](http://localhost:8000/) to ensure your mock server is up and running.

- Ensure choosing a different port in docker-compose.mock-server.yml in the case `8000` is already occupied.

- Ensure restarting the mock server on any change in `api.raml`. The following command can be used for that:
```-
    $ docker-compose restart 
```

## Integration

- Ensure the endpoint definition file exists in the project and is located in a dedicated (mountable) folder, e.g. `raml/api.raml`.

- Create `docker-compose.mock-server.yml` in the root folder of the project. The file should contain the following definition. The mounted `raml` folder must be adjusted if needed.
```yaml
version: '3.4'
services:
  raml-mock-server:
    image: raml-mock-server
    ports:
    - "8000:80"
    volumes:
    - ./raml:/raml
```

- Start the mock server for your project by executing the following command:    
```-
$ dcker-compose -f docker-compose-mock-server.yml up -d
```

- Restart the mock server on any change in `api.raml` file:
```-
$ docker-compose -f docker-compose-mock-server.yml restart
```    
    
     


