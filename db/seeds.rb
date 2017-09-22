# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Etiam vitae placerat augue, at commodo diam. In dictum vel nisi at facilisis. Vivamus leo quam, sagittis eget fermentum congue, dapibus ac est. Nam sit amet neque a libero viverra viverra id rhoncus metus. Morbi quis tortor sit amet ex congue vulputate vitae at leo. Donec at ex commodo nisl iaculis tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar ex id nisi iaculis laoreet. Maecenas id mi mi. Etiam nec augue et erat molestie venenatis. Suspendisse fermentum pretium leo ac ullamcorper. Maecenas maximus, nisi vitae fermentum consequat, velit ex luctus mauris, quis fringilla nulla urna sit amet erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails" ,
    body: "Morbi ac nulla varius, pellentesque libero in, luctus nulla. Nullam maximus neque enim, sit amet consequat metus sodales ut. Quisque a quam augue. Donec nibh nunc, auctor a tincidunt a, tincidunt vitae nibh. Nulla ullamcorper eget tellus quis vulputate. Etiam consequat lorem a eleifend facilisis. In at nulla justo.",
    main_image: "http://via.placeholder.com/600x200",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular" ,
    body: "Morbi ac nulla varius, pellentesque libero in, luctus nulla. Nullam maximus neque enim, sit amet consequat metus sodales ut. Quisque a quam augue. Donec nibh nunc, auctor a tincidunt a, tincidunt vitae nibh. Nulla ullamcorper eget tellus quis vulputate. Etiam consequat lorem a eleifend facilisis. In at nulla justo.",
    main_image: "http://via.placeholder.com/600x200",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
  )
end

puts "3 technologies created"
