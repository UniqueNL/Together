# Together

![Screenshot TogetherApp](http://res.cloudinary.com/unique/image/upload/v1480001946/Schermafbeelding_2016-11-24_om_14.34.29_tkmnhn.png)

### What is Together

**Together**, *(TogetherChat)*, is a chatapp which is heavily inspired by Slack. It's made to experiment with ActionCable in Rails and to show my progress in Rails in the last two months.

This project is still a work-in-progress though. The main functionalities working right now are:

* Creating, maintaining and managing users.
* Manage the chatrooms
* Working chatrooms which can be filled with messages.
* Admin tools to moderate the chat.

Other ideas for this application are:

* Stand-alone desktop application
* Better moderating options
* Notifications
* A kanban-board for teams
* More ranks to use for bigger teams.

[Go to the live version](http://togetherchat.herokuapp.com)
### How to run it locally?
This build used Ruby (2.2.5) and Rails (5.0.0.1). The other dependencies are inside of the Gemfile.

1. Clone the repository.
2. Use `bundle install` to install the gems. Be sure you have Bundler installed.
3. Start your server with `rails server`.
4. Go to `localhost:3000`.

There are some tests included (Rspec) but they were just to test some validations. You can start testing with writing `rspec` in your terminal.

### How did I create the app?
1. First of all I started creating a base concept by sketching. I had a time limit of 3 days to make a working concept. It was necessary to start as quick as possible.
2. After creating the ActionCable connection and the base concept of the chatroom, I started to make my own grid for the app to make it scalable whatever resolution the user has.
3. Styling is important so I made a standard layout.
4. After this I started to implement more features to make the chatroom more usable.


### Authors
* Sam Taal (UniqueNL)

### License
You are free to improve the application, but if you do let me know! I'd love to see other versions of the chat.

* MIT © Sam Taal
