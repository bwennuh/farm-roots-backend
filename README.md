# README

## Backend Setup
```
rails new <my-project> --api -T --database=postgresql
```

Let's go through this in detail:

* `--api`
  *  Make a [Rails 5 API](http://edgeguides.rubyonrails.org/api_app.html), basically you're telling Rails you don't want any of the stuff you wouldn't need for an application where Rails is not rendering views. Think the ActionView library (`form_for`, `link_to`, etc..), ERB, Security protections that ensure forms were rendered by the Rails app, things like that.
* `-T`
  * don't generate tests for this app
* `--database=postgresql`
  * Set this up to use a Postgres (as opposed to SQLite) database. If you ever want to push this to Heroku, Heroku requires a Postgres database. There won't be too much difference in how you have to write your code. You'll have to be sure to run `rails db:create` and make sure you have postgres running (i.e you can see the elephant)
* Be sure to do the necessary setup for the [rack-cors-gem](https://github.com/cyu/rack-cors)
* You may want to use [active-model-serializers](https://github.com/rails-api/active_model_serializers/tree/0-10-stable)

## Notes
By default both your client app and your rails app will run on port 3000. You'll have to specify one or the other to run on a separate port.
* Rails: `rails s -p <some_number_thats_not_3000>`
* React: Check out this [issue](https://github.com/facebookincubator/create-react-app/issues/1083)

A great article on how [DHH thinks about setting up controllers in Rails](http://jeromedalbert.com/how-dhh-organizes-his-rails-controllers/)
