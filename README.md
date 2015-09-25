# Find A Spot API
This README describes how to interact with the Find A Spot API. The API is hosted by the trusted service Heroku and has been built off of Ruby on Rails.

## To Interact with the API
* Going to <tt>http://find-a-spot.herokuapp.com/restaurants</tt> will display all the available restaurants a user can go to that have restaurants participating with our service.
* Going to <tt>http://find-a-spot.herokuapp.com/restaurants/:id</tt> will show a specific restaurant name. If you choose an <tt>:id</tt> that doesn't exist in the database, it will render an error.
* Going to <tt>http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots</tt> displays all the spots belonging to a specific restaurant. If you choose an <tt>:restaurant_id</tt> that doesn't exist in the database, it will render an error.
* Going to <tt>http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots/:id</tt> only shows a single spot belonging to a specific restaurant. If you choose an <tt>:restaurant_id</tt> and/or <tt>:id</tt> that doesn't exist in the database, it will render an error.

