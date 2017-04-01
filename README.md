# Video Game Exchange

This is an app for trading video games online.
It is built to introduce Level II students to gems using Devise as an example.
Students start with a prebuilt app and use Devise to add an authentication layer.

# Setting up the example app

There's a bootstrap script which can be run to setup the app.
Run this in the terminal:

```shell
curl -sSL https://raw.githubusercontent.com/TheFuturesFund/video-game-exchange-example/master/bin/bootstrap | bash
```

This will clone the app and setup the database.
Once it is done, `cd` into the app's directory:

```shell
cd video-game-exchange
```

At this point, you should be ready to use `rails server` and checkout the example app:

```shell
rails server -b 0.0.0.0
```

# Adding Devise

[Devise](https://github.com/plataformatec/devise) is a gem that will give us the ability to make our users sign up or sign in before posting any listings.
To start, let's add Devise to our `Gemfile` in our project's root:

```ruby
gem "devise"
```

Once the gem is added to the Gemfile, we need to install it:

```shell
bundle install
```

Now the gem is installed.
There's a command we need to run on our terminal so Devise can do its initial setup:

```shell
rails generate devise:install
```

# Setting up the user model

Next, let's use Devise to generate a User model.

```bash
rails generate devise User
```

Once that is done, we'll need to migrate our database:

```bash
rails db:migrate
```

Now, let's fire up the server and checkout a few routes.
Specifically, give these a try:

- localhost:3000/users/sign_up
- localhost:3000/users/sign_in

# Adding links to the layout

Now we can sign in, but to what end?
Let's start making some things happen when you sign in.

First, we'll add a some stuff to the application layout.
If you are signed in, we'll want to tell the you who you are, and give you the option to sign out.
When you're not signed in, we'll want to give you the option to sign in or sign up.

Let's do this by adding the following to `app/views/layouts/application.html.erb`:

```erb
<div class="content">
  <!-- New code starts here -->
  <p>
    <% if user_signed_in? %>
      Signed in as <%= current_user.email %>.
      <%= link_to "Sign out", destroy_user_session_path, method: :delete %>.
    <% else %>
      Not signed in.
      <%= link_to "Sign in", new_user_session_path %>
      or
      <%= link_to "sign up", new_user_registration_path %>.
    <% end %>
  </p>
  <!-- New code stops here -->
  <p class="notice"><%= notice %></p>
  <p class="alert"><%= alert %></p>
  <%= yield %>
</div>
```

# Restricting views

This is great!
We can sign in and sign up.
But, notice that right now that doesn't actually do anything.
If you sign in, you can still use the site.
We want to require our users to sign in in order to user the site.
We can do that by adding a `before_action` in `app/controller/listings_controller.rb`:

```ruby
class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # lots of code down here...
end
```

Now, if we try to use the app without signing in, we're redirected to the login screen where there is a message telling us that we must sign up before continuing.

And that's it.
It's really that easy.
Now, if you want to go for bonus, try adding adding making the User model associated with the Listing model ;)


