class Book < ActiveRecord::Base
  attr_accessible :book_code, :publisher_id, :title
end
