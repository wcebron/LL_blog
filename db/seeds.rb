# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
User.destroy_all
# Post.photos.destroy_all

Post.create(title: 'Our guide to finding the right music teacher', category: 'Lessons', teaser: "What are the most important things to look for in a music teacher? Learn the right way to find a teacher", content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac felis pulvinar, luctus nisi eget, mollis dui. Sed posuere enim nunc, ac sagittis lorem vehicula in. Suspendisse id eleifend sem, sed pretium quam. Nam nulla eros, consectetur ornare turpis ac, dictum eleifend nibh. Proin augue nunc, mollis sit amet dapibus in, dignissim eu velit. Donec blandit velit ac odio semper laoreet. Aliquam eleifend urna nunc, eu viverra lorem accumsan id. Fusce vel tempor augue. Maecenas sem lacus, efficitur luctus suscipit nec, euismod eget velit. Sed fringilla feugiat lorem, sed efficitur enim convallis vitae. Sed magna nulla, pulvinar quis semper at, mollis tempus arcu. Aenean commodo metus magna, sit amet lacinia erat viverra eu.

')

Post.create(title: 'Studies reveal new benefits of music', category: 'MusicEd', teaser: "Recent research has shown that music can have vast benefits when introduced to elementary school students or younger", content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac felis pulvinar, luctus nisi eget, mollis dui. Sed posuere enim nunc, ac sagittis lorem vehicula in. Suspendisse id eleifend sem, sed pretium quam. Nam nulla eros, consectetur ornare turpis ac, dictum eleifend nibh. Proin augue nunc, mollis sit amet dapibus in, dignissim eu velit. Donec blandit velit ac odio semper laoreet. Aliquam eleifend urna nunc, eu viverra lorem accumsan id. Fusce vel tempor augue. Maecenas sem lacus, efficitur luctus suscipit nec, euismod eget velit. Sed fringilla feugiat lorem, sed efficitur enim convallis vitae. Sed magna nulla, pulvinar quis semper at, mollis tempus arcu. Aenean commodo metus magna, sit amet lacinia erat viverra eu.

')

Post.create(title: 'John Mayer talks music inspriations and learning guitar', category: 'Legends', teaser: "John Mayer talks about his inspirations for learning guitar", content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac felis pulvinar, luctus nisi eget, mollis dui. Sed posuere enim nunc, ac sagittis lorem vehicula in. Suspendisse id eleifend sem, sed pretium quam. Nam nulla eros, consectetur ornare turpis ac, dictum eleifend nibh. Proin augue nunc, mollis sit amet dapibus in, dignissim eu velit. Donec blandit velit ac odio semper laoreet. Aliquam eleifend urna nunc, eu viverra lorem accumsan id. Fusce vel tempor augue. Maecenas sem lacus, efficitur luctus suscipit nec, euismod eget velit. Sed fringilla feugiat lorem, sed efficitur enim convallis vitae. Sed magna nulla, pulvinar quis semper at, mollis tempus arcu. Aenean commodo metus magna, sit amet lacinia erat viverra eu.

')

Post.create(title: 'What is the right piano for beginners?', category: 'Instruments', teaser: "Follow us as we guide you through the plethora of beginner keyboards and pianos on the market", content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac felis pulvinar, luctus nisi eget, mollis dui. Sed posuere enim nunc, ac sagittis lorem vehicula in. Suspendisse id eleifend sem, sed pretium quam. Nam nulla eros, consectetur ornare turpis ac, dictum eleifend nibh. Proin augue nunc, mollis sit amet dapibus in, dignissim eu velit. Donec blandit velit ac odio semper laoreet. Aliquam eleifend urna nunc, eu viverra lorem accumsan id. Fusce vel tempor augue. Maecenas sem lacus, efficitur luctus suscipit nec, euismod eget velit. Sed fringilla feugiat lorem, sed efficitur enim convallis vitae. Sed magna nulla, pulvinar quis semper at, mollis tempus arcu. Aenean commodo metus magna, sit amet lacinia erat viverra eu.

')

User.create(email: "will@lessonlodge.com", bio:"amateur coder professional beast")

# Post.photos.create(url: 'http;ashaishai') add in an image url for the placeholders