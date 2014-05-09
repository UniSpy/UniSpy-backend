class Tag < ActiveRecord::Base

  validates_uniqueness_of :content

 has_and_belongs_to_many :users

end
