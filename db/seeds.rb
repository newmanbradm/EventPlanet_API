User.create(name: "Brad", email: "newmanbradm@gmail.com", password: "bradnewman" )

Event.create(title: "First Event", date: "September 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Second Event", date: "December 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Third Event", date: "September 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Fourth Event", date: "December 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Fifth Event", date: "September 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Sixth Event", date: "December 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Seventh Event", date: "September 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Eighth Event", date: "December 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Ninth Event", date: "September 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Tenth Event", date: "December 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Eleventh Event", date: "September 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)
Event.create(title: "Last Event", date: "September 29, 2018", rain_date: "none", description: "example", contact_details: "Brad at 908-442-1251", budget: 1000, user_id: 1)


Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumcAp6fF2G68mYg_A7J31a8WJXq-Lu13b7g_6IXiKRjz-F45b", event_id: 1)
Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYrmioiv3SU9dceXcCoJ0KJwdDugDo3IsHKnYE_1hE_QSO3HXg", event_id: 1)
Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSumcAp6fF2G68mYg_A7J31a8WJXq-Lu13b7g_6IXiKRjz-F45b", event_id: 2)
Post.create(image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYrmioiv3SU9dceXcCoJ0KJwdDugDo3IsHKnYE_1hE_QSO3HXg", event_id: 2)

Comment.create(message: "This is the first comment.", post_id: 1)
Comment.create(message: "This is the second comment.", post_id: 1)
Comment.create(message: "This is the first comment.", post_id: 2)
Comment.create(message: "This is the second comment.", post_id: 2)
Comment.create(message: "This is the first comment.", post_id: 3)
Comment.create(message: "This is the second comment.", post_id: 3)
Comment.create(message: "This is the first comment.", post_id: 4)
Comment.create(message: "This is the second comment.", post_id: 4)

Supply.create(name: "Tablecloth", price: 5, store_url: "https://www.walmart.com", event_id: 1)
Supply.create(name: "Centerpiece", price: 10, store_url: "https://www.target.com", event_id: 1)
Supply.create(name: "Tablecloth", price: 5, store_url: "https://www.walmart.com", event_id: 2)
Supply.create(name: "Centerpiece", price: 10, store_url: "https://www.target.com", event_id: 2)

Venue.create(name: "Holiday Inn", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY6f1U_q-Mxl4WS9MTXBM9y-559rgmMhOw_kboIc7ZTZPUWTc5", address: "324 Newport Road")
Venue.create(name: "Woodglen Park", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY6f1U_q-Mxl4WS9MTXBM9y-559rgmMhOw_kboIc7ZTZPUWTc5", address: "324 Newport Road")
Venue.create(name: "Prudential Center", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY6f1U_q-Mxl4WS9MTXBM9y-559rgmMhOw_kboIc7ZTZPUWTc5", address: "324 Newport Road")
Venue.create(name: "Blue Mountain", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY6f1U_q-Mxl4WS9MTXBM9y-559rgmMhOw_kboIc7ZTZPUWTc5", address: "324 Newport Road")

Guest.create(name: "Alex", phone_number: "123-456-7890", email: "Alex@example.com")
Guest.create(name: "Leann", phone_number: "123-456-7890", email: "Leann@example.com")
Guest.create(name: "Laura", phone_number: "123-456-7890", email: "Laura@example.com")
Guest.create(name: "Sarah", phone_number: "123-456-7890", email: "Sarah@example.com")

EventVenue.create(event_id: 1, venue_id: 1)
EventVenue.create(event_id: 1, venue_id: 2)
EventVenue.create(event_id: 2, venue_id: 1)
EventVenue.create(event_id: 2, venue_id: 3)
EventVenue.create(event_id: 2, venue_id: 4)

EventGuest.create(event_id: 1, guest_id: 1)
EventGuest.create(event_id: 1, guest_id: 2)
EventGuest.create(event_id: 2, guest_id: 1)
EventGuest.create(event_id: 2, guest_id: 3)
EventGuest.create(event_id: 2, guest_id: 4)
