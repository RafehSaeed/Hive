# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create(  username: 'rafeh' , 
			   email:'rafeh_saeed@hotmail.ca', 
			   firstname:"rafeh",
			   lastname:"saeed",


				password:'dadidadi')

Buisness.create(  username: 'ahmed' , 
			   email:'ahmedgreat1@msn.com', 
			   buisnessname: "Zakis",
			   address: "200 Donald St",


				password:'dadidadi')

ServiceProvider.create(  username: 'zaid' , 
			   email:'zaid@yahoo.ca', 
			   firstname:"zaid",
			   lastname:"qureshi",


				password:'dadidadi',
				verified: true,
				address: '200 Mcarthur',
				postalcode: 'K1K1M8')

Review.create(  
				rating: '4.0' , 
			    comment:'Good job done', 
			    date:"2016-4-4",
			    buisness_id:"1",
			    service_provider_id: '1'


				)


category_array=['Computers','Moving','Cleaning',
	'Tutoring','Plumbing','Cooking','Driving','Sales']

category_array.each do |category|
Category.create(  
				name: category , 
			    minimumwage: 11.25
	


				)

end
