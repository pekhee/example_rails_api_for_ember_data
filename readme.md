rails-api new project_name
rails-api generate model User name:string
rails-api generate model Profile name:string description:text user:references
bundle exec rake db:migrate
rails-api generate controller users
add users resource to routes.rb
edit controller for index, show, create, update and destroy actions


# commands
curl -X POST 'localhost:3000/users' -H 'Content-Type: application/json' -d '{ "user": {"name": "Pooyan"} }'
