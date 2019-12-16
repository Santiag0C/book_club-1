require 'rails_helper'

RSpec.describe 'the books index', type: :feature do
  it 'can display the index with the nessesary info'do
    @jk_rowling = Author.create(name: 'J. K. Rowling')
    @jhon = Author.create(name: 'Jhon Colon')
    @book_1 = @jk_rowling.books.create(title: 'Harry Potter', pages: 300, publication_year: '2000')
    @book_2 = @jk_rowling.books.create(title: 'The Tales of Beedle the Bard', pages: 400, publication_year: '2014')
    @book_3 = @jhon.books.create(title: '300', pages: 128, publication_year: '2013')

    visit '/books'

    # @jk_rowling.books

    expect(page).to have_content(@book_1.title)
    expect(page).to have_content(@book_1.pages)
    expect(page).to have_content(@book_1.publication_year)
    expect(page).to have_content(@book_1.authors[0].name)

    expect(page).to have_content(@book_2.title)
    expect(page).to have_content(@book_2.pages)
    expect(page).to have_content(@book_2.publication_year)
    expect(page).to have_content(@book_2.authors[0].name)


  within "#book-#{@book_1.id}" do
    click_on'J. K. Rowling'


  end
    expect(current_path).to eq("/authors/#{@jk_rowling.id}")
    expect(page).to have_content(@book_1.authors[0].name)
    expect(page).to have_content(@book_1.title)
    expect(page).to have_content(350)

  end
end
