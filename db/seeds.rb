5.times do |i|
	Service.create!(title: "Nails Service #{i}", description: "Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec sed odio dui. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Sed posuere consectetur est at lobortis.", image:"http://placehold.it/1000x250")
end

puts "5 services created"