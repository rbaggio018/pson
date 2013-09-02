class Book < ActiveRecord::Base
  attr_accessible :book_code, :publisher_id, :title, :publisher_attributes, :chapters_attributes

  has_many :chapters, :dependent => :destroy
  belongs_to :publisher, :autosave => true

  accepts_nested_attributes_for :publisher, :chapters

  validates :book_code, :uniqueness => true

  def autosave_associated_records_for_publisher
    if existing_publisher = Publisher.find_by_publisher_code(publisher.publisher_code)
      self.publisher = existing_publisher
    else
      self.publisher = publisher if self.publisher.save
    end
  end
end
