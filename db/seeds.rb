(1..20).each do |num|
 post = Post.create!(title: Faker::Hipster.word,
                    body: Faker::Hipster.paragraph)
end

10.times do
  user = User.create!(name: Faker::Superhero.name)
end
