# Specifications for the Sinatra Assessment

- [x] Use Sinatra to build the app - controllers inherit from Sinatra::Base and define HTTP interface for the app;
  - Separate directories for models, controllers, views (with separation of concerns)
- [x] Use ActiveRecord for storing information in a database
  - used ActiveRecord to make queries to a Mysql database
- [x] Include more than one model class (e.g. User, Listings)
  - User, Listings, wishlist: Manager
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
  - User has_many Listings, User belongs_to HOA, User belongs_to Listing, User belongs to Role, User has_many Listings
  - HOA has many users, HOA has_many Listings
  - Listings has many users, Listings belongs_to HOA, Listing has many users
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
  - Listing(s) belongs_to user
- [ ] Include user accounts with unique login attribute (username or email)
  - Validate unique user login attributes by ensuring that there is no an existing user account with the entered username (prevent duplicates)
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
  - Logged in user has access to CRUD actions: ability to create sessions (login)/ Listings, read, update or delete 
  - Controller actions following restful conventions and map to CRUD actions
  - Mapping URL in uniform manner to specific HTML verb we want -> to data we want to get/post -> to specific view we want to render;
- [ ] Ensure that users can't modify content created by other users
  - Views are protested based on helper methods `logged_in?` and `current_user`
  - User authorization - users can only edit/ delete the resources (Listings) associated with their user_id
  - `session_hash` dictates what user can see/ edit
  - Request user to verify identity with valid credentials
- [ ] Include validations
  - No blank fields when submitting forms
  - New forms cannot be submitted with blank fields according to HTML form - image is optional
  - New/Update forms are not accessible without login;
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
  - Error Message displayed when:
    - user tries to sign up with existing username, or without username + password
    - user tries to signs in without correct user credentials
    - user leaves problem grade/ color/ date blank in the create problem form in 'problems/new.erb' (HTML generated error message)
    - user leaves problem style blank in Create Problem form or Edit Problem form
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

### Blog Post:
http://crm.twenty9signals.com:3000

Confirm
- [x] You have a large number of small Git commits
  - every 15-20 lines
- [x] Your commit messages are meaningful
  - explain what changes and where
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
