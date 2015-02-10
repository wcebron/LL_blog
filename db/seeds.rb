# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: 'Test', category: 'MusicEd', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac felis pulvinar, luctus nisi eget, mollis dui. Sed posuere enim nunc, ac sagittis lorem vehicula in. Suspendisse id eleifend sem, sed pretium quam. Nam nulla eros, consectetur ornare turpis ac, dictum eleifend nibh. Proin augue nunc, mollis sit amet dapibus in, dignissim eu velit. Donec blandit velit ac odio semper laoreet. Aliquam eleifend urna nunc, eu viverra lorem accumsan id. Fusce vel tempor augue. Maecenas sem lacus, efficitur luctus suscipit nec, euismod eget velit. Sed fringilla feugiat lorem, sed efficitur enim convallis vitae. Sed magna nulla, pulvinar quis semper at, mollis tempus arcu. Aenean commodo metus magna, sit amet lacinia erat viverra eu.

', teaser: 'Lorem ipsum dolor sit amet')
User.create(name: 'Mickey Mouse', email: 'mickeymouse@themagickingdom111.com')