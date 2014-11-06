# Rails Zoo Lab

For tonight's lab, we'd like you to create an app for Zoos across the world to display their animals. **Do not use scaffold to complete this assignment.**

##User Stories

* Users should not have to Authenticate or Authorize (for now...)

* Users should see an index of registered Zoos on the homepage
 	* A Zoo has many Animals
	* A Zoos show page will be the Animals index page
	* The Zoo have a RESTful URL path
* Users should be able to create, update and destroy any of the listed Zoos
	* When a Zoo is destroyed, so are all of its animals

* Users should see all the Animals when they click on a Zoo listing and view their show page
	* An Animals belongs to a Zoo
	* An Animal will have name, photo, and tag fields
	* The animals have a RESTful URL path, nested under Zoos
* Users should be able to create, update, and destroy any of the listed Zoos

## How to get started

1. Generate your models and migrations and begin to model your relationships
- Each zoo should have a name and location
- Each zoo should be able to have many animals
- You should not be able to create a Zoo that has no name or location (think about validations) 
- The name of each Zoo must be unique
- Each animal shoud have a name, photo and zoo_id
2. Run your migrations and make sure you have the correct foreign key setup
- Test your associations in rails console
- make sure you can do something like:
```
z = Zoo.create(name:"bronx zoo",location:"NYC") 
z.animals #this should not throw an error if your association is set up correctly
```
4. Once you have tested your models in Rails console, create the routes required to create and show data with your models.
	* Write your own custom routes, if you need a good reference refer to the routes guide on the Rails Docs. I.e.
		* `get '/zoos/:id', to: 'zoos#show'`
		* `post '/zoos/:id', to: 'zoos#create'`
		* `patch '/zoos/:id', to: 'zoos#update'`
		* etc.

Remeber, you can always look back at notes from this afternoon to help you with properly configuring your routing, controllers and views.


## Bonus

1. Include your own custom styling, bootstrap or another CSS framework in your application and style your blog.
2. Include flash messages to display success and error messages when a Zoo or Animal is created, updated or deleted.
