# Find A Spot API
This README describes how to interact with the Find A Spot API. The API is hosted by the trusted service Heroku and has been built off of Ruby on Rails and the data is all rendered in JSON.

## UML
![MacDown Screenshot](https://dl.dropboxusercontent.com/u/17178250/Find%20a%20Spot%21.png)

## To Interact with the API
* `GET` request to `http://find-a-spot.herokuapp.com/restaurants` will display all the available restaurants along with parking spots available for each of those restaurants.
* `GET` request to `http://find-a-spot.herokuapp.com/spots` will display all the parking spots in an array of hashes.
* `GET` request to `http://find-a-spot.herokuapp.com/restaurants/:id` will show a specific restaurant name. If you choose an `:id` that doesn't exist in the database, it will render an error.
* `GET` request to `http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots` displays all the spots belonging to a specific restaurant. If you choose an `:restaurant_id` that doesn't exist in the database, it will render an error.
* `GET` request to `http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots/:id` only shows a single spot belonging to a specific restaurant. If you choose an `:restaurant_id` and/or `:id` that doesn't exist in the database, it will render an error.
* `PUT`request to `http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots/:id` OR `PUT`request to `http://find-a-spot.herokuapp.com/spots` allows you to **update** the availability of a parking spot. The params are 

```
	{ id: integer,
	available: boolean,
	user_id: integer }
```
> * `:id` equates to the parking spot number 
> * `:available` equates to availability of the parking spot
> * `:user_id` equates to the specific user who has made the parking spot reservation.

#### Parking Spot Assignments

| id |         Restaurant       | Parking Spot #'s |
|:------------- |:---------------:| -------------:|
| 1 |          Hopdoddy           |      1-8      |
| 2 |          Homeslice          |      9-16     |
| 3 |         Turf-N-Surf         |      17-24    |
| 4 |       Black Star Co-Op      |      25-32    |
| 5 |        Torchy's Tacos       |      33-40    |
| 6 |           Contigo           |      41-48    |
| 7 |          Easy Tiger         |      49-56    |
| 8 |           Via 313           |      57-64    |
 
