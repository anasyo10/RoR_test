# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...............................................

# Question 1

* if is_admin boolean is not required in the model then the user will be updated and redirected to the account url else it will render edit

* ...............................................

# Question 2

* GET, PUT, POST and DELETE requests should be used for Lookups, mutation of data, ceation of data and deletion of data respectively.

# Question 3

* Render doesnot change the URL but renders a new page whereas redirect_to method changes the url and a new page is rendered.

# Question 4

* array = [1,3,37,9,6,7,8,4]
* sum = 0
* sum = array.sum

# Question 5

* Http Verb     URL
* GET           posts/:id/comments
* POST          posts/bulk_upload
* PATCH         posts/:id
* DELETE        posts/:id
* GET           posts/new
* GET           posts/:id/edit
* POST          posts/


# Question 6

User.find(5) => Couldn't find User with 'id'=5
User.find_by_id(5) => nil


