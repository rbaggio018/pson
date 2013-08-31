class Chapter < ActiveRecord::Base
  attr_accessible :title

  belongs_to :book
end
