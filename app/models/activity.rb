class Activity < ActiveRecord::Base
  validates :id , :name , :description , presence: true

  has_many :activity_logs


end
