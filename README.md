# Rails Zoo Lab

For tonight's lab, we'd like you to create an app for Zoos across the world to display their animals.

A Zoo should be able to have many animals, see all posts and see an individual post. The user should also be able to assign tags to each post and for every post they should be able to create a tag, view all tags, and view all posts by tags.

##User Stories

* Users should not need to login to view our site

* Users should see an index of registered Zoos on the homepage
	* A Zoo will be able to register for our site
	* A Zoo will have fields for a username, location, and password
	* A Zoo will be able to login with their username and password
	* A Zoo has many Animals
	* The Zoo have a RESTful URL path



* Users should see all the Animals when they click on a Zoo listing
	* An Animal will have name, photo, and tag fields
	* An Animals belongs to a Zoo
	* The animals have a RESTful URL path, nested under Zoos

* Users should be able to click on an Animal to see their show page that lists all the animal's information

* Zoos should be able to create their own Animals but not another Zoo's animals

## How to get started

1. Generate your models and migrations and begin to model your relationships
2. Run your migrations and make sure you have the correct foreign key setup
3. For each model, make sure everything is working in `rails console` before you start building your routes, controllers and views.
4. Once you have tested your models in Rails console, create the routes required to create and show data with your models.
	* Write your own custom routes, if you need a good reference refer to the routes guide on the Rails Docs. I.e.
		* `get '/zoos/:id', to: 'zoos#show'`
		* `post '/zoos/:id', to: 'zoos#update'`
		* etc.

Remeber, you can always look back at notes from this afternoon to help you with properly configuring your routing, controllers and views.



## Bonus

1. Add routes and methods to allows Zoos to update an exiting Animal and destroy an Animal

2. Include your own custom styling, bootstrap or another CSS framework in your application and style your blog.

3. Include flash messages to display success and error messages for when a Zoo account is being authorized or authenticated



