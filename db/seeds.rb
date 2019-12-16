# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@jk_rowling = Author.create(name: 'J. K. Rowling')
@jhon = Author.create(name: 'Jhon Colon')
@book_1 = @jk_rowling.books.create(title: 'Harry Potter', pages: 300, publication_year: '2000')
@book_2 = @jk_rowling.books.create(title: 'The Tales of Beedle the Bard', pages: 400, publication_year: '2014')
@book_3 = @jhon.books.create(title: 'Emotional Machine', pages: 328, publication_year: '2012')
