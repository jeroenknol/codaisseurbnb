Photo.delete_all
Theme.delete_all
Room.delete_all
User.delete_all

# Themes
modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_a_view = Theme.create(name: "Room with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

# Users
miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829538/vc-gqgbakjo-clark-street-mercantile_mbswar.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829529/u-9luqmjedy-t-cud_diynds.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829546/qyxivshpddo-jonathan-simcoe_cjhwlv.jpg")

photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829524/prcwagdzayy-samuel-zeller_lsd6uf.jpg")
photo5 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829526/mfj9g64-wxq-kari-shea_seojn9.jpg")
photo6 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829531/heepoapeivk-jason-briscoe_ux53ht.jpg")

photo7 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829523/h_xf5vhzmrm-neha-deshmukh_tenlqm.jpg")
photo8 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829528/8a93kuy5p5s-armando-castillejos_zgoxk8.jpg")
photo9 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfdlufyaj/image/upload/v1484829534/4hk-xm_jx0o-crew_g3cwfl.jpg")

# Rooms
Room.create(home_type: "House", room_type: "Shared", accommodate: 2, bedroom_count: 2, bathroom_count: 3, listing_name: "You will never forget your stay!", description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee raw denim readymade.", address: "Colon 58, 1B, 11100 Cadiz (Spain)", has_tv: false, has_kitchen: true, has_airco: false, has_heating: false, has_internet: true, price: 100, active: true, user: miriam, themes: [modern_and_minimal, sleek_and_sophisticated], photos: [photo1, photo2, photo3])

Room.create(home_type: "House", room_type: "Shared", accommodate: 2, bedroom_count: 2, bathroom_count: 3, listing_name: "A place in the middle of Holland", description: "Freegan yuccie everyday carry tote bag you probably haven't heard of them godard.", address: "Daguerrestraat 23, 1054TG Utrecht (Netherlands)", has_tv: false, has_kitchen: true, has_airco: false, has_heating: false, has_internet: true, price: 100, active: true, user: wouter, themes: [warm_and_cozy, a_mans_touch], photos: [photo4, photo5, photo6])

Room.create(home_type: "House", room_type: "Shared", accommodate: 2, bedroom_count: 2, bathroom_count: 3, listing_name: "Great for a Weekend", description: "Meditation tattooed lumbersexual street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.", address: "Tottenham Court Road 14, W1T 1JY London (UK)", has_tv: false, has_kitchen: true, has_airco: false, has_heating: false, has_internet: true, price: 100, active: true, user: matt, themes: [elegant_and_ornate, white_washed], photos: [photo7, photo8, photo9])

## bookings

Booking.create(room: room1, user: wouter, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Booking.create(room: room1, user: matt, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
