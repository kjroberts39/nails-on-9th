5.times do |i|
	Service.create!(title: "Nails Service #{i}", description: "Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec sed odio dui. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Sed posuere consectetur est at lobortis.", image:"http://placehold.it/1000x250")
end

puts "5 services created"

20.times do |i|
	Exhibit.create!(photo:"http://placehold.it/300x200", artist: "Artist #{i}")
end

puts "20 Exhibit items created"

9.times do |i|
	Stylist.create!(name: "Jessica Day #{i}", bio: "Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit.", image: "http://placehold.it/200x250" )
end

puts "9 Stylists created"