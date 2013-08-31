class Publisher < ActiveRecord::Base
  attr_accessible :name, :publisher_code

  has_many :books
end
