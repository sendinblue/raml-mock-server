# RAML Mock Server 

##### Brief introduction   

This application allows you to run a REST API mock sever which uses [RAML](https://raml.org/). 

# Demo
The only file you need to run your API demo is **raml/api.raml**, which is used by the mock server to create endpoints.

api.raml contains one basic example of **GET** request and to explore more please check the RAML 
[developers page](https://raml.org/developer).


#### Execute below command to start the demo:

    $ docker-compose up -d
       
Go to [http://localhost:8000/api/](http://localhost:8000/api/) and 
that's all your mock server is up and running. 

**ps:** Make sure to change the port in docker-compose.mock-server.yml, if it's already occupied.

If you make any changes in api.raml, you'll have to execute the command below for changes to make effect.

    $ docker-compose restart 


# Integration

* Ensure `api.raml` file exists in your project (e.g. `raml/api.raml`).

* Create `docker-compose.mock-server.yml` into root folder of your project with below code:
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
* To start/restart the mock server for your project, please execute:  
```-
$ dcker-compose -f docker-compose-mock-server.yml up -d

$ docker-compose -f docker-compose-mock-server.yml restart
```
    
    
     


