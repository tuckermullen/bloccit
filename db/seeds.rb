include RandomData

50.times do

  Advertisement.create!(

    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph
  )
end
posts = Advertisement.all


100.times do
  Advertisement.create!(

    advertisement: advertisements.sample,
    copy: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Advertisement.count} posts created"
puts "#{Advertisement.count} comments created"
