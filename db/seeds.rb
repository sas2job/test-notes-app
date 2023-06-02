#10.times do |i|
#  User.create(
#    full_name: Faker::Name.name_with_middle,
#    email: "t#{i}@t.t",
#    password: "password"
#  )
#end

#55.times do |i|
#  user = User.all.sample
#  note = user.notes.create(
#    note: Faker::Hipster.paragraph(sentence_count: 4),
#    date_of_creation: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
#  )
#end  
