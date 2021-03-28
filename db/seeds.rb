# frozen_string_literal: true

# ##  TODO: make a counter method for seeds
require 'faker'

print 'Seeding Users Table.'
puts '.......'
puts '.......'

User.create([
              {
                fname: 'Neeson',
                lname: 'Grant',
                username: 'ngrant',
                email: 'new@email.com',
                password_digest: '12345',
                'listing_id' => Listing.ids.sample,
                created_at: '2018-04-14 02:09:44.528632',
                updated_at: '2018-04-19 16:22:55.254084'
              },
              {
                fname: 'Salma',
                lname: 'Tine',
                username: 'stine',
                email: 'salma@hotmail.com',
                password_digest: '12345',
                'listing_id' => Listing.ids.sample,
                created_at: '2018-04-14 02:17:30.310658',
                updated_at: '2018-04-14 02:17:30.310658'
              },
              {
                fname: 'Rend',
                lname: 'Miller',
                username: 'rmiller',
                email: 'hend@anything.com',
                password_digest: '12345',
                'listing_id' => Listing.ids.sample,
                created_at: '2018-04-16 23:44:09.971071',
                updated_at: '2018-04-16 23:44:09.971071'
              },
              {
                fname: 'Eddie',
                lname: 'Opara',
                username: 'eopara',
                email: 'eopara@gmail.com',
                password_digest: '12345',
                'listing_id' => Listing.ids.sample,
                created_at: '2021-02-22 18:42:08.345412',
                updated_at: '2021-02-22 18:42:08.345412'
              }
            ])
print 'Seeding User Table complete.'

puts '.......'
puts '.......'

print 'Seeding Listings Table.'
puts '.......'
puts '.......'

Listing.destroy_all

puts '.......'
puts '.......'

puts 'Adding Listings'
puts '.......'
puts '.......'
num = 0
30.times do
  percent = num / 30 * 100
  sleep(0.05)
  print 'Seeding complete in'
  print "...#{num += 1} seconds\n"
  puts '.......'
  puts '.......'
  i = num += 1

  Listing.create({

                     'address' => Faker::Address.full_address,
                     'status' => (1..2).to_a.sample.to_s, # Active/Inactive Faker?
                     'first_listed' => Faker::Date.between(from: '2001-03-11', to: '2021-03-14'),
                     'bedrooms' => "#{(1..5).to_a.sample}",
                     'bathrooms' => "#{(1..5).to_a.sample}",
                     'summary' => Faker::Lorem.paragraph(sentence_count: 2, supplemental: false,
                                                         random_sentences_to_add: 4),
                     'sqft' => "#{(900..6000).to_a.sample} sq. ft.",
                     'asking_price' => "$#{(10_000..30_000_000).to_a.sample}",

                     'photo_1' => Faker::LoremFlickr.image(size: '320x240',
                                                           search_terms: ["homes_for_sale?random=#{i += 1}"]),
                     'photo_2' => Faker::LoremFlickr.image(size: '320x240',
                                                           search_terms: ["homes_for_sale?random=#{i += 2}"]),
                     'photo_3' => Faker::LoremFlickr.image(size: '320x240',
                                                           search_terms: ["homes_for_sale?random=#{i += 3}"]),
                     'photo_4' => Faker::LoremFlickr.image(size: '320x240',
                                                           search_terms: ["homes_for_sale?random=#{i += 4}"]),

                     'phone' => Faker::PhoneNumber.phone_number,
                     'community' => Faker::Address.street_name,
                     "user_id" => User.ids.sample
                     #'hoa_id' => Hoa.ids.sample
                 })
  num += 1

  system('clear')

end
puts '.......'
puts '.......'
sleep(0.05)
print 'Seeding Tables complete.'
puts '.......'
puts '.......'
print 'Bye.\n'