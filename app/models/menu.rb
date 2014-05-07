class Menu < ActiveRecord::Base
  has_one :url
  has_one :location
  has_one :meal
end
