class Author < ApplicationRecord
  attr_reader :info
  has_many :book_authors
  has_many :books, through: :book_authors

  validates_presence_of :name

  def self.average(info)
    num = 0
    info.each do |book|
      num += book.pages
    end
    num/info.count
  end
end
