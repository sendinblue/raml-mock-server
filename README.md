# RAML Mock Server 

#####Brief introduction  -  [RAML](https://raml.org/)

RAML (RESTful API Modeling Language) provides a structured, unambiguous format for describing a RESTful API. 
It allows you to describe your API; the endpoints, the HTTP methods to be used for each one, any parameters and 
their format, what you can expect by way of a response and more.



#Demo
The only file you need to run your API demo is **demo/raml/api.raml**, which is used by the mock server to create endpoints.

api.raml contains one basic example of **GET** request and to explore more please check the RAML 
[developers page](https://raml.org/developer).


####Execute below command to start the demo:

    $ docker-compose -f demo/docker-compose-mock-server.yml up -d
       
Go to [http://localhost:8000/api/foo](http://localhost:8000/api/foo) and 
that's all your mock server is up and running. 

**ps:** Make sure to change the port in docker-compose.mock-server.yml, if it's already occupied.


If you make any changes in api.raml, you'll have to execute the command below for changes to make effect.

    $ docker-compose -f demo/docker-compose-mock-server.yml restart 


#Integration

* Create `raml/` folder in root of your project and copy `demo/raml/api.raml` file into it.
* Copy `docker-compose.mock-server.yml` into root folder of your project.
* To start/restart the mock server for your project, execute:  

    
    $ dcker-compose -f docker-compose-mock-server.yml up -d
    
    $ docker-compose -f docker-compose-mock-server.yml restart
    
    
    
     


