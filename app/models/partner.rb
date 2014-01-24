class Partner < ActiveRecord::Base
  has_many :courses
  
  validates :title, :email, :address, :phone, presence: true
  validates :phone, numericality: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
