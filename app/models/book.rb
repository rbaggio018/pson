class Book < ActiveRecord::Base
  attr_accessible :book_code, :publisher_id, :title, :publisher_attributes, :chapters_attributes

  has_many :chapters, :dependent => :destroy
  belongs_to :publisher

  accepts_nested_attributes_for :publisher, :chapters
end
