class Course < ActiveRecord::Base
  belongs_to :partner

  validates :title, :description, :attendees, :price, presence: true
end
