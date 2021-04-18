# Chat Room

Simple chat using ActionCable.

## Installation
To run the application it is assumed that you have installed Ruby Version Manager, with version 3.0.0 as default, and Mysql.

[Ruby Version Manager](https://rvm.io/rvm/install).
After instalation run 'rvm install ruby-2.6.5'.

[MySql](https://dev.mysql.com/doc/refman/5.7/en/installing.html).
Make sure the service is running. And that the username and password is the same as that configured in the database.yml file.

Clone repository `git clone git@github.com:TiagoLima411/chat_room.git`.
Enter the `chat_room` folder.

### Set up Chat Room app

First, install the gems required by the application:

    gem install bundle
    bundle install
    
Next, execute the database commands:

    rails db:create
    rails db:migrate
    rails db:migrate


### Start the app

Start the Rails app to see the In-Context-Editor added to the To-Do application. You're ready to localize your app:

    rails s -b 0.0.0.0

You can find your app now by pointing your browser to http://localhost:3000.
