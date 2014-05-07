class Meal < ActiveRecord::Base
  serialize :fi, Array
  serialize :en, Array
  belongs_to :menu
end
