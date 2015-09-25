# Find A Spot API
This README describes how to interact with the Find A Spot API. The API is hosted by the trusted service Heroku and has been built off of Ruby on Rails.

## To Interact with the API
* <tt>GET</tt> request to <tt>http://find-a-spot.herokuapp.com/restaurants</tt> will display all the available restaurants a user can go to that have restaurants participating with our service.
* <tt>GET</tt> to <tt>http://find-a-spot.herokuapp.com/restaurants/:id</tt> will show a specific restaurant name. If you choose an <tt>:id</tt> that doesn't exist in the database, it will render an error.
* <tt>GET</tt> to <tt>http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots</tt> displays all the spots belonging to a specific restaurant. If you choose an <tt>:restaurant_id</tt> that doesn't exist in the database, it will render an error.
* <tt>GET</tt> to <tt>http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots/:id</tt> only shows a single spot belonging to a specific restaurant. If you choose an <tt>:restaurant_id</tt> and/or <tt>:id</tt> that doesn't exist in the database, it will render an error.
* <tt>PUT</tt> request to <tt>http://find-a-spot.herokuapp.com/restaurants/:restaurant_id/spots/:id</tt> with the params being <tt>/:id</tt>, <tt>/:available</tt> & <tt>/:user_id</tt>. <tt>/:id</tt> equates to the parking spot number, <tt>/:available</tt> equates to availability and <tt>/:user_id</tt> equates to the user who has made the reservation.