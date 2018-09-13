User.create(name: "Brad", email: "newmanbradm@gmail.com", password: "bradnewman" )

Event.create(title: "Fall Bridal Shower", date: "October 27, 2018", rain_date: "Rain or Shine", description: "Bridal Shower in Hunterdon County, NJ.  Event to start at 1:00 PM at The Farmhouse at The Grand Colonial.", contact_details: "Theresa at 908-987-6543", budget: 2000, user_id: 1)
Event.create(title: "Funival", date: "May 17, 2019", rain_date: "May 18, 2019", description: "Funival @ TCNJ Campus, lots 4 & 5. Event to start at 5:00 PM. Concert at 8:00PM followed by fireworks at 9:30PM.", contact_details: "Jan at 908-123-4567", budget: 50000, user_id: 1)



Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvafbzpsc1JC-vWaxP2N0TnQo8wziNZt1eLRW3_wmw-kDiiyc8-A", event_id: 1)
Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5SLmJg2234eHRYYOE4hx6JTjvGzL0f_lhgusZnKXjoNVrazLY", event_id: 1)
Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl29bZEOLx4m_5cWFK5ZQ-XaCCuhs-HRbwEMCGtGYlEZMx6Jbx", event_id: 2)
Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMH-LBPqTuqZRPtKnOb83yOjJH4gdDocVevYhxzscQI2lOxJC9Aw", event_id: 2)
Post.create(image_url: "https://media.nbcphiladelphia.com/images/652*367/Oink+and+Moo+BBQ+Sliders.jpg", event_id: 2)


Comment.create(message: "Beautiful welcome sign!", post_id: 1)
Comment.create(message: "Gravitron", post_id: 3)
Comment.create(message: "Call Gary at 908-756-9237.", post_id: 3)
Comment.create(message: "Oink & Moo Food Truck.", post_id: 4)
Comment.create(message: "Contact Sally, sally@example.com", post_id: 4)

Supply.create(name: "4 Table Runners", price: 63.96, store_url: "https://www.pier1.com/autumn-plaid-table-runner-with-fringe-/3570792.html?cgid=table_runners#nav=left&origin=gridswatch", event_id: 1)
Supply.create(name: "4 Centerpieces", price: 199.96, store_url: "https://www.pier1.com/white-sunflower-%26-pumpkin-centerpiece-candle-holder/3577976.html#q=centerpieces&origin=gridswatch", event_id: 1)
Supply.create(name: "Gravitron", price: 5000, store_url: "https://www.ride-extravaganza.com/intermediate/gravitron/", event_id: 2)
Supply.create(name: "Oink & Moo Food Truck", price: 2000, store_url: "http://oinkandmoobbq.com/trucks/", event_id: 2)

Venue.create(name: "The Farmhouse at The Grand Colonial", image_url: "http://dun6irwnoloqf.cloudfront.net/images/venues/3137/The-Farmhouse-at-the-Grand-Colonial-wedding-Hampton-NJ-127320.1470244379.jpg", address: "86 NJ-173, Hampton, NJ 08827")
Venue.create(name: "The College of New Jersey", image_url: "https://www.usnews.com/img/college-photo_7806.jpg", address: "2000 Pennington Road, Lots 4 & 5, Ewing, NJ 08618")

Guest.create(name: "Alex", phone_number: "123-456-7890", email: "Alex@example.com")
Guest.create(name: "Leann", phone_number: "123-456-7890", email: "Leann@example.com")
Guest.create(name: "Laura", phone_number: "123-456-7890", email: "Laura@example.com")
Guest.create(name: "Sarah", phone_number: "123-456-7890", email: "Sarah@example.com")
Guest.create(name: "Jan", phone_number: "908-123-4567", email: "jan@tcnj.edu")
Guest.create(name: "Michelle", phone_number: "908-875-2398", email: "michelle@tcnj.edu")

EventVenue.create(event_id: 1, venue_id: 1)
EventVenue.create(event_id: 2, venue_id: 2)

EventGuest.create(event_id: 1, guest_id: 1)
EventGuest.create(event_id: 1, guest_id: 2)
EventGuest.create(event_id: 1, guest_id: 3)
EventGuest.create(event_id: 1, guest_id: 4)
EventGuest.create(event_id: 2, guest_id: 5)
EventGuest.create(event_id: 2, guest_id: 6)

