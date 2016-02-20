# Phoenix + Elm + Webpack + Heroku Example App

## What is this?

This is a [Phoenix] application scaffold demonstrating changes to be made to
prepare for deployment to [Heroku] to run the application and [Elm], using
[webpack] to compile and build all assets.

[Phoenix]: http://www.phoenixframework.org/
[Heroku]: https://www.heroku.com/
[Elm]: http://elm-lang.org/
[webpack]: https://webpack.github.io/

## Deploying to Heroku

To deploy to Heroku, create a Heroku app (if you haven't already), and then
prepare the application for deployment by setting `SECRET_KEY_BASE` and
configuring both buildpacks.

    heroku create
    heroku config:set SECRET_KEY_BASE=$(mix phoenix.gen.secret)
    heroku buildpacks:set https://github.com/gjaldon/phoenix-static-buildpack
    heroku buildpacks:add --index 1 https://github.com/HashNuke/heroku-buildpack-elixir

This repository demonstrates NPM including elm as the only requirement for
compiling Elm on the server (Webpack handles all the heavy lifting of asset
compilation and concatenation to `app.js`).

## Running Phoenix

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix
    ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment
guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
