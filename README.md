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





