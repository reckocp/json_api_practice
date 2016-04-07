10.times do
  user = User.create!(name: Faker::Superhero.name)

  20.times do |num|
   post = Post.create!(title: Faker::Hipster.word,
                      body: Faker::Hipster.paragraph,
                      user_id: User.all.sample.id)
  end
end
