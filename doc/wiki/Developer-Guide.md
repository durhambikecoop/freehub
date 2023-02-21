# Developer Guide

## Prerequisites

1. Install [Node.js (latest lts)](https://nodejs.org/en/download/) with npm
2. Install [rbenv](https://github.com/rbenv/rbenv#installation)
3. Install [ruby 3.2](https://github.com/rbenv/rbenv#installing-ruby-versions)
4. Install a mysql server and create a root user with no password

## Setup

### Linux Environment

1. Navigate to the project directory ex: `cd ~/git/freehub`
2. Run `bundle install`, `rails db:create`, `rails db:migrate` to install the ruby dependencies and create the database
3. Then run `npm --prefix assets install` to install the node dependencies
4. [Import database from an old database dump](https://github.com/durhambikecoop/freehub/discussions/4) and [update the user password](#updating-user-password) [optional]

### Windows Environment

## Running the app locally for development

1. Navigate to the project directory ex: `cd ~/git/freehub`
2. Run `bin/dev` to start the server and vite bundler
3. Open `http://localhost:3000/[organization key]` in your browser, ex: [http://localhost:3000/dbc](http://localhost:3000/dbc)

## Updating User Password

1. Navigate to the project directory ex: `cd ~/git/freehub`
2. Run `rails c` to open the rails console

   Enter the following commands to update the user password:

   ```ruby
   User.first.update!(password: '[new password]')
   ```

## Requirements

Organizations, such as the Durham Bike Co-op (DBC), offer services for people visiting the organization. Organizations have a name, a location (city, state), a unique key, and a time zone. Current services are membership, classes, and earn-a-bike/digging rights. Services can be earned by volunteering at the organization or paying for the service. Services have a start date and an expiration date. To earn a service people visit the organization to either a volunteer or to work on a project.

When people visit an organization a DBC Freehub user records their arrival time and adds them to the arrival queue. New people visiting the organization are added to Freehub and are required to supply their first name. People may optionally supply their last name, a physical address, an e-mail address, and their birth year.

After the person is added to the arrival queue, a DBC Freehub user signs them in perform volunteer work or a to work on a project. Volunteering allows people to earn a service. When people leave the organization the Freehub user signs them out.

DBC Freehub users can examine visitation metrics, services earned, people status, and summary reports. All reports can be exported to a CVS file format and saved on a local machine.

Organizations have Users. A User logs in to Freehub with a username and password. There are two types of User: a Normal User, and a Superuser. Only Superusers can change the Organization configuration under the “Settings” menu, and define an Organization's Service types, Person Tag types, and Event types (see below). Each Organization has one Normal User and one Superuser

- A Person also has Services. A Service has a start date and end date and a type (Membership, Earn-A-Bike, Class) and if the Person paid or volunteered for the Service. Service types are defined by each Organization in the Settings menu.
- A Person also has Tags. A Tag indicates that a person belongs to a certain sub-class of persons (e.g. Keyholders, Board Members, etc). Person Tags types are defined by each Organization in the Settings menu. Whereas a Service expires, a Tag persists until a Person is un-tagged.
- A Visit has Events. An Event captures a record of a certain activity (e.g. Earn-A-Bike completion, Bike Donation Received, Helmet Fitted) completed during a Visit.
  TERMINOLOGY
- A Person can be flagged as Staff.
- A Person is a Member if they have a Membership Service with a date range that includes today.
- If a Person is not Staff or a Member, then they are a Patron.
- A Person can Volunteer for any Visit. Any Person can Volunteer when they visit the shop, either working as Staff, a Member, or a Patron (working to earn Membership or another Service, or simply helping out). A Person who is Volunteering is a Volunteer. A person who is not volunteering is a Project.

## Database Design

### Database Implementation

DBC Freehub uses MySQL for its database server.

## Application Framework

DBC Freehub is implemented using the Ruby-on-Rails framework.
