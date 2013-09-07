# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'


CSV.foreach('/Users/Swannyyy/Dropbox/launchacademy/swerk/Lib/db/checkout.csv', headers:true) do |row|

  checked_out={
    check_out_date: row[0],
    due_date: row[1],
    person: row[2]
  }
  if Checkout.where(checked_out).empty?
    Checkout.create(checked_out)
  end

end

CSV.foreach('/Users/Swannyyy/Dropbox/launchacademy/swerk/Lib/db/books.csv', headers:true) do |row|

  books={
    title: row[0],
    authors: row[1],
    rating: row[2]
  }
  if Book.where(books).empty?
    Book.create(books)
  end

end

CSV.foreach('/Users/Swannyyy/Dropbox/launchacademy/swerk/Lib/db/categories.csv', headers:true) do |row|

  genres={
    genre: row[0]
  }
  if Category.where(genres).empty?
    Category.create(genres)
  end

end
