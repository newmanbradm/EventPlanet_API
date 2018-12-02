# EventPlanet
> A single-page "one-stop-shop" application that allows events coordinators to quickly and easily organize and track all of their events!

Created with a Ruby on Rails API backend and a Javascript frontend, EventPlanet is an event coordinator's dream application, serivng as a "one-stop-shop" organizer for events of all styles and sizes. Input and update of your events' details, upload photos and information for your venues, keep track of guest or volunteer contact information, and monitor purchased supplies and remaining budgets. You can even start a unique inspiration board for each event! Start planning your events with EventPlanet and you'll wonder how you ever coordinated events without it!

React frontend repo available here: https://github.com/newmanbradm/EventPlanet

<p align="center">
  <img src="https://media.giphy.com/media/ero9mTlPmiByTxodsQ/giphy.gif">
</p>

## Installation

OS X & Linux:

front end: 
```sh
npm install
```

back end:
```sh
bundle install
```

## Usage example

Before playing, you must enter a username:

<p align="center">
  <img src="https://media.giphy.com/media/25OBHoAMQNkJLjcKjw/giphy.gif">
</p>


Then, play to your heart's content until you reach the leaderboard.

<p align="center">
  <img src="https://media.giphy.com/media/cJz04ccqHzOdrftvI9/giphy.gif">
</p>


## Development setup

front end (will auto run on port :3001):
```sh
npm start
```
back end (will auto run on port :3000):
```sh
rails db:create
rails db:migrate
rails s
```

## Release History

* 0.1.0
    * The first proper release

## Meta

Brad Newman - newmanbradm@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/newmanbradm]

## Contributing

1. Fork it (<https://github.com/newmanbradm/EventPlanet_API>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
