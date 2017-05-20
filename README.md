# Shoe Store
### By Dan Jacob 5/5/17

  Epicodus Project Week 4 || Many-to-Many Database Relationships Practice

## Description
This application serves as practice in Ruby and SQL Database Relationships by building an internal website to allow users to add stores and brands as part of a shoe store. The user will be able to assign certain shoes to certain stores, and will also be able to create, update, and delete stores. Users determine the price of the shoe brand and will be able to list as many shoe brands as they would like. User entry for brands and stores are limited to 100 characters.
## Prerequisites

###### To run this application, you must have postgres, Ruby, Sinatra, and the specific gems required listed in the Gemfile installed on your local device

## Installing

##### Before viewing this application it is imperative to follow the instructions below

 1. In the terminal, change into the desktop, and clone this repository, after cloning/download is complete run bundle to download all gems

```
cd desktop
git clone https://github.com/DanJacobCodes/shoe_store.git
bundle
```
2. After this step is complete, you should open a new tab in the terminal (Alt +T) and run the following command

```
postgres
```
*At this point you should have postgres running in the background, postgres will not require any further action*


3. Next, you must create the local database required to run this application, users will not be expected to manually create local databases as the ActiveRecord gem handles this functionality. Simply, type in these commands in order. (Revert back to the original window)

```
rake db:create
rake db:migrate
rake db:test:prepare
```
4. Preferably in a new tab in the terminal, but not mandatory, users should now run one last command in the terminal to get a local server running, by simply typing in
```
ruby app.rb
```
*After these steps are complete you can view the application by navigating to your preferred browser and typing (or pasting) in the URL bar the "link" listed below*

```
localhost:4567
```
## Support and contact details

Should any issues occur contact me at dansamueljacob@gmail.com

## Technologies Used
 HTML, CSS, Bootstrap, Ruby, Sinatra, Capybara, Postgres, PSQL, ActiveRecord,

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
