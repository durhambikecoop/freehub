# Development

## Pre-requisites

1. Install [Node.js (latest lts)](https://nodejs.org/en/download/) with npm
2. Install [rbenv](https://github.com/rbenv/rbenv#installation)
3. Install [ruby 3.2](https://github.com/rbenv/rbenv#installing-ruby-versions)
4. Install a mysql server and create a root user with no password

## Setup

1. Navigate to the project directory ex: `cd ~/git/freehub`
2. Run `bundle install`, `rails db:create`, `rails db:migrate` to install the ruby dependencies and create the database
3. Then run `npm --prefix assets install` to install the node dependncies
4. [Import database from an old database dump](https://github.com/durhambikecoop/freehub/discussions/4) and [update the user password](#updating-the-user-password) [optional]

## Running the app locally for development

1. Navigate to the project directory ex: `cd ~/git/freehub`
2. Run `bin/dev` to start the server and vite bundler
3. Open `http://localhost:3000/[organization key]` in your browser, ex: [http://localhost:3000/dbc](http://localhost:3000/dbc)

## Updating the user password

1. Navigate to the project directory ex: `cd ~/git/freehub`
2. Run `rails c` to open the rails console

   Enter the following commands to update the user password:
   ```ruby
   User.first.update!(password: '[new password]')
   ```

# Deployment (WIP)

TODO: Write deployment instructions here and create a dockerized version of the app to make deployment simple