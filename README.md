# README

Install rails admin: 
  1. Go to https://github.com/sferik/rails_admin
  2. On your gemfile: gem 'rails_admin', '~> 1.2'
  3. Run bundle install
  4. Run rails g rails_admin:install
  5. Provide a namespace for the routes when asked
  6. Start a server rails s and administer your data at /admin. (if you chose default namespace: /admin)

### Authentication with devise 
 #### If your resource is employee to authenticate, open the initializers/rails_admin.rb, add the following codes
 
 ```
  config.authenticate_with do
    warden.authenticate! scope: :employee
  end
  config.current_user_method(&:current_employee)
 ```
 reference: https://github.com/sferik/rails_admin/wiki/Authentication
 
 ### Authorization: If you want to authorize the localhost:3000/admin path to the employee who has the role as admin(the role you defined in the database), add the following to the initializers/rails_admin.rb
 
 ```
   RailsAdmin.config do |config|
     config.authorize_with do
       redirect_to main_app.root_path unless current_employee.role === "admin"
     end
   end
 ```
 reference: https://github.com/sferik/rails_admin/wiki/Authorization
 
 ### Include models
 
 ```
  config.included_models = ["Project", "Company", "Department"]
 
```

### Set the app name 

```
  config.main_app_name = ["Experiment With Rails Admin", ""]

```
