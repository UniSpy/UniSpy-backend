class User < ActiveRecord::Base
    has_secure_password
    has_and_belongs_to_many :tags

    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
