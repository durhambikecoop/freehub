# Developer Guide

## Description
Organizations, such as the Durham Bike Co-op (DBC), offer services for people visiting the organization. Current services are membership, classes, and digging rights (which includes earn-a-bike). Service fulfillment is achieved by either payment or volunteering some amount of time. Some services, such as membership, have an expiration date.

People visiting the organization have a reason for their visit, either volunteering or working on a project. Can a person visit the organization and just pay for a membership without signing in? How do services offered by the organization and projects that people are working on relate to each other? How do classes fit in with projects/volunteering?

People visiting an organization are signed in by a user. New people visiting the organization are required to supply their first name and last name. People may optionally supply a physical address, an e-mail address, and their date of birth. In both cases, the arrival time and the reason for visiting is recorded.

People visiting an organization are classified as either patrons or staff. How does a person get classified as staff?

The DBC Freehub keeps track of people visiting the organization and the services that people fulfill. Interactions with Freehub are performed by users who log into Freehub with a username and password. Are there different user types? How many users are their currently and what are their responsibilities?

Users of the system can generate reports on people, visits, services, and a summary. Copy description from UI.

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
