class Session < ActiveRecord::Base
  before_create :generate_token
  belongs_to :user

  def self.authenticate_with(token)
    s = Session.with token
    return nil if s.nil?
    s.user
  end

  def self.with(token)
    Session.find_by token:token
  end

  private

  def generate_token
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: token)
  end
end
