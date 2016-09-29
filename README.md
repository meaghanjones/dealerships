# Dealerships
### Meaghan Jones and Stephanie Gurung 

### Description 

We create a car dealership application which stores information about dealerships and the vehicles that they sell. Our site should allow a user to:

* Add new dealerships
* View a list of existing dealerships
* Select a dealership to see a list of the dealership's vehicles
* Select a vehicle to see details about it (make, model, year, color, etc)
* Our final application will include aDealership class and a Vehicle class. 


Installation
------------

Install *Dealerships* by cloning the repository.  
```
$ git clone https://github.com/meaghanjones/dealerships
```

Install required gems:
```
$ bundle install
```

```
In PSQL:
CREATE DATABASE hair_salon;
CREATE TABLE clients (id serial PRIMARY KEY, name varchar, phone varchar, stylist_id int);
CREATE TABLE stylists (id serial PRIMARY KEY, name varchar, phone varchar, specialty varchar);
```

Start the Sinatra webserver:
```
$ ruby app.rb
```

Navigate to `localhost:4567` in your browser of choice.

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Meaghan Jones**
